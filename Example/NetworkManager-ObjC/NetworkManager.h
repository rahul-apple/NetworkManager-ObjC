//
//  NetworkManager.h
//  Example
//
//  Created by RAHUL'S MAC MINI on 01/07/15.
//  Copyright (c) 2015 iDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Reachability.h"

typedef enum{
    kNetworkConnected,
    kNetworkDisConnected
}kNetworkStatus;

@protocol NetworkManagerDelegate <NSObject>

-(void)netWorkConnectionDropped:(kNetworkStatus)netStatus;
-(void)netWorkConnectionConnected:(kNetworkStatus)netStatus;

@end

@interface NetworkManager : NSObject{
    
}
+ (id)startManager;
@property (nonatomic) kNetworkStatus networkStatus;
@property (nonatomic,strong) Reachability *internetReachability;
@property (nonatomic ,strong) id <NetworkManagerDelegate> delegate;


@end
