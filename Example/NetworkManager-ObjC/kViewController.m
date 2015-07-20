//
//  kViewController.m
//  NetworkManager-ObjC
//
//  Created by rahul-apple on 07/01/2015.
//  Copyright (c) 2014 rahul-apple. All rights reserved.
//

#import "kViewController.h"

@interface kViewController (){
    NetworkManager *manager;
}

@end

@implementation kViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
   
    
    manager =[NetworkManager startManager];
    manager.typeSelected =NOTIFICATION_REGISTER;
    /*Add these lines if You using the  Delegate_Methods
    manager.delegate=self;
    
   */
    
   //*Add below lines if you use Notification Type
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(networkDisConnected:) name:@"NetworkDisConnected" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(networkConnected:) name:@"NetworkConnected" object:nil];
    
    
    //**
    
    [statusLebl.layer setShadowOffset:CGSizeMake(2, 3)];
    [statusLebl.layer setShadowOpacity:0.25];
    [statusLebl.layer setShadowRadius:3.0f];
    
}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
     [[NSNotificationCenter defaultCenter] removeObserver:self name:@"NetworkDisConnected" object:nil];
     [[NSNotificationCenter defaultCenter] removeObserver:self name:@"NetworkConnected" object:nil];
}





- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma -mark NetworkManager Notification Methods
/*Add these methods if you Use type as DELEGATE_METHODS */

-(void)networkDisConnected:(NSNotification *)notification{
    [statusLebl setText:@"Internet Connection Dropped."];
    [statusLebl setTextColor:[UIColor redColor]];

}
-(void)networkConnected:(NSNotification *)notification{
    [statusLebl setText:@"Internet Connected."];
    [statusLebl setTextColor:[UIColor greenColor]];
    
}


#pragma -mark NetworkManager Delegate
/*Add these methods if you Use type as DELEGATE_METHODS
 
-(void)netWorkConnectionDropped:(kNetworkStatus)netStatus{
    [statusLebl setText:@"Internet Connection Dropped."];
    [statusLebl setTextColor:[UIColor redColor]];
}
-(void)netWorkConnectionConnected:(kNetworkStatus)netStatus{
    [statusLebl setText:@"Internet Connected."];
    [statusLebl setTextColor:[UIColor greenColor]];
}
*/


@end
