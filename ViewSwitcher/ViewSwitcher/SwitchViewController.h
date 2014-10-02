//
//  SwitchViewController.h
//  ViewSwitcher
//
//  Created by jarvis on 10/2/14.
//  Copyright (c) 2014 jarvis. All rights reserved.
//
#import <UIKit/UIKit.h>
@class YellowViewController;
@class BlueViewController;

@interface SwitchViewController : UIViewController
@property (strong,nonatomic) YellowViewController *yellow;
@property (strong, nonatomic) BlueViewController *blue;

-(IBAction)switchViews:(id)sender;

@end
