//
//  CrystalBall.swift
//  CrystalBall
//
//  Created by Isaac Williams on 7/11/14.
//  Copyright (c) 2014 Isaac Williams. All rights reserved.
//

import Foundation

class CrystalBall : NSObject {
    var predictions: [String] = ["It is decidedly so", "Most certainly", "All signs say YES", "Assuredly", "It is doubtful", "My reply is no", "Not in a million years", "No", "Concentrate and ask again", "Better not tell you now", "Unable to answer now"]

    var randomPrediction: String {
    get {
        let random = Int(arc4random_uniform(UInt32(predictions.count)))
        return predictions[random]
    }
    }
}