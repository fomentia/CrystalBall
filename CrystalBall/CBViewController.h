//
//  CBViewController.h
//  CrystalBall
//
//  Created by Isaac Williams on 7/8/14.
//  Copyright (c) 2014 Isaac Williams. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CrystalBall-Swift.h"

@class CrystalBall;

@interface CBViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) CrystalBall *crystalBall;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;

- (void) makePrediction;

@end
