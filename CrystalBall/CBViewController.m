//
//  CBViewController.m
//  CrystalBall
//
//  Created by Isaac Williams on 7/8/14.
//  Copyright (c) 2014 Isaac Williams. All rights reserved.
//

#import "CBViewController.h"

@interface CBViewController ()

@end

@implementation CBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.predictions = [[NSArray alloc] initWithObjects:@"It is decidedly so", @"Most certainly", @"All signs say YES", @"It is doubtful", @"My reply is no", @"Not in a million years", @"Concentrate and ask again", @"Better not tell you now", @"Unable to answer now", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    int random = arc4random_uniform(self.predictions.count);
    self.predictionLabel.text = [self.predictions objectAtIndex:random];
}

@end