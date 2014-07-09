//
//  CBViewController.m
//  CrystalBall
//
//  Created by Isaac Williams on 7/8/14.
//  Copyright (c) 2014 Isaac Williams. All rights reserved.
//

#import "CBViewController.h"
#import "CBCrystalBall.h"

@interface CBViewController ()

@end

@implementation CBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.crystalBall = [[CBCrystalBall alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    self.predictionLabel.text = [self.crystalBall randomPrediction];
}

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if ( motion == UIEventSubtypeMotionShake ) {
        self.predictionLabel.text = [self.crystalBall randomPrediction];
    }
}

@end