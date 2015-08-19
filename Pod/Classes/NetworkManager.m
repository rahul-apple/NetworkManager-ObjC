//
//  NetworkManager.m
//  Example
//
//  Created by RAHUL'S MAC MINI on 01/07/15.
//  Copyright (c) 2015 iDev. All rights reserved.
//

#import "NetworkManager.h"

@implementation NetworkManager

+ (id)startManager {
    static NetworkManager *sharedMyManager = nil;
    static dispatch_once_t onceToken; dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}
- (id)init {
    if (self = [super init]) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reachabilityChanged:) name:kReachabilityChangedNotification object:nil];
        self.internetReachability = [Reachability reachabilityForInternetConnection];
        [self.internetReachability startNotifier];
        [self checkReachability:self.internetReachability];
    }
    return self;
}
- (void) reachabilityChanged:(NSNotification *)note
{
    Reachability* curReach = [note object];
    [self checkReachability:curReach];
}
-(void)checkReachability:(Reachability *)curReach{
    NSParameterAssert([curReach isKindOfClass:[Reachability class]]);
    if(curReach.currentReachabilityStatus == NotReachable){
        NSLog(@"Internet off");
        if (self.networkStatus==kNetworkConnected) {
            self.networkStatus=kNetworkDisConnected;
            
            if (self.typeSelected == DELEGATE_METHODS) {
                [self.delegate netWorkConnectionDropped:kNetworkDisConnected];
            }else if (self.typeSelected == NOTIFICATION_REGISTER){
                 [[NSNotificationCenter defaultCenter] postNotificationName:@"NetworkDisConnected" object:nil];
            }
            
            
        }
    }
    else{
        NSLog(@"Internet on");
        if (self.networkStatus==kNetworkDisConnected) {
            self.networkStatus=kNetworkConnected;
            if (self.typeSelected ==NOTIFICATION_REGISTER) {
               [[NSNotificationCenter defaultCenter] postNotificationName:@"NetworkConnected" object:nil];
            }else{
               [self.delegate netWorkConnectionConnected:kNetworkConnected];  
            }
           
        }
    }
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}

@end
