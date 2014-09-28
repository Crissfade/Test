//
//  ViewController.m
//  chapter 5
//
//  Created by jarvis on 9/28/14.
//  Copyright (c) 2014 jarvis. All rights reserved.
//

#import "ViewController.h"
#define degreesToRadians(x) (M_PI * (x) / 180.0)

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *portrait;
@property (strong, nonatomic) IBOutlet UIView *landscape;
@property (weak, nonatomic) IBOutlet UIButton *foos;
@property (weak, nonatomic) IBOutlet UIButton *bars;

    
@end

@implementation ViewController



- (IBAction)buttonTapped:(UIButton *)sender {

}


-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration {
    
    if (interfaceOrientation == UIInterfaceOrientationPortrait) {
        self.view = self.portrait;
        
    }
    else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {
        self.view = self.landscape;
        
    }
    else if (interfaceOrientation ==
             UIInterfaceOrientationLandscapeRight) {
        self.view = self.landscape;
      
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
