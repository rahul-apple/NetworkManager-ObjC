# NetworkManager-ObjC

[![CI Status](http://img.shields.io/travis/rahul-apple/NetworkManager-ObjC.svg?style=flat)](https://travis-ci.org/rahul-apple/NetworkManager-ObjC)
[![Version](https://img.shields.io/cocoapods/v/NetworkManager-ObjC.svg?style=flat)](http://cocoapods.org/pods/NetworkManager-ObjC)
[![License](https://img.shields.io/cocoapods/l/NetworkManager-ObjC.svg?style=flat)](http://cocoapods.org/pods/NetworkManager-ObjC)
[![Platform](https://img.shields.io/cocoapods/p/NetworkManager-ObjC.svg?style=flat)](http://cocoapods.org/pods/NetworkManager-ObjC)

## Usage


To run the example project, clone the repo, and run `pod install` from the Example directory first.

A class Designed for Check Internet connection.Written for iOS, Objective-C, Cocoa Touch, iPhone, iPad.
Usage:
Add This In Your Podfile

```ruby
pod "NetworkManager-ObjC"
``
update pod
```ruby
pod update
``

```Obj-C
#import<NetworkManager.h>




NetworkManager *manager;
manager =[NetworkManager startManager];
manager.delegate=self;
``


#dont  forget   add  <NetworkManagerDelegate>

Implement These Methods:

-(void)NetWorkConnectionDropped:(kNetworkStatus)netStatus{
    //Method Gets Called When Internet connection Gets Dropped.!
}
-(void)NetWorkConnectionConnected:(kNetworkStatus)netStatus{
    //Method Gets Called When Internet Connected Back.!
}



refer the example for More Details


## Requirements

## Installation

NetworkManager-ObjC is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "NetworkManager-ObjC"
```

## Author

rahul-apple, rahulthazhuthala@gmail.com

## License

NetworkManager-ObjC is available under the MIT license. See the LICENSE file for more info.
