//
//  SwitchViewController.m
//  ViewSwitcher
//
//  Created by jarvis on 10/2/14.
//  Copyright (c) 2014 jarvis. All rights reserved.
//

#import "SwitchViewController.h"
#import "YellowViewController.h"
#import "BlueViewController.h"

@interface SwitchViewController ()

-(IBAction)switchViews:(id)sender;
@end

@implementation SwitchViewController

-(IBAction)switchViews:(id)sender
{
    if (self.yellow.view.superview == nil)
    {
        if (self.yellow == nil)
        {
            self.yellow = [[YellowViewController alloc] initWithNibName:@"YellowView" bundle:nil];
        }
        [self.blue.view removeFromSuperview];
        [self.view insertSubview:self.yellow.view atIndex:0];
    }
    else
    {
        if (self.blue == nil)
        {
            self.blue = [[BlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
        }
        [self.yellow.view removeFromSuperview];
        [self.view insertSubview:self.blue.view atIndex:0];
    }
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.blue = [[BlueViewController alloc] initWithNibName:@"YellowView" bundle:nil];
    [self.view insertSubview:self.blue.view atIndex:0];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    if (self.blue.view.superview == nil)
    {
        self.blue = nil;
    }
    else
    {
        self.yellow = nil;
    }
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
