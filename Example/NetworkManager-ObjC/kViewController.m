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
    manager.delegate=self;
    [statusLebl.layer setShadowOffset:CGSizeMake(2, 3)];
    [statusLebl.layer setShadowOpacity:0.25];
    [statusLebl.layer setShadowRadius:3.0f];
    
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

#pragma -mark NetworkManager Delegate

-(void)NetWorkConnectionDropped:(kNetworkStatus)netStatus{
    [statusLebl setText:@"Internet Connection Dropped."];
    [statusLebl setTextColor:[UIColor redColor]];
}
-(void)NetWorkConnectionConnected:(kNetworkStatus)netStatus{
    [statusLebl setText:@"Internet Connected."];
    [statusLebl setTextColor:[UIColor greenColor]];
}



@end
