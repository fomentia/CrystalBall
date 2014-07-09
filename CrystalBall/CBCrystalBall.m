//
//  CBCrystalBall.m
//  CrystalBall
//
//  Created by Isaac Williams on 7/8/14.
//  Copyright (c) 2014 Isaac Williams. All rights reserved.
//

#import "CBCrystalBall.h"
#import "CBViewController.h"

@implementation CBCrystalBall

-(NSArray *) predictions {
    if (_predictions == nil) {
        _predictions = [[NSArray alloc] initWithObjects:@"It is decidedly so", @"Most certainly", @"All signs say YES", @"It is doubtful", @"My reply is no", @"Not in a million years", @"Concentrate and ask again", @"Better not tell you now", @"Unable to answer now", nil];
    }
    return _predictions;
}

- (NSString*) randomPrediction {
    int random = arc4random_uniform(self.predictions.count);
    return [self.predictions objectAtIndex:random];
}

@end
