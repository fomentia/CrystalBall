//
//  CBCrystalBall.h
//  CrystalBall
//
//  Created by Isaac Williams on 7/8/14.
//  Copyright (c) 2014 Isaac Williams. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CBCrystalBall : NSObject {
    NSArray *_predictions;
}

    @property (strong, nonatomic, readonly) NSArray *predictions;

    - (NSString*) randomPrediction;

@end
