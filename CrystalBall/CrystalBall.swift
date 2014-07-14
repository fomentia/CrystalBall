//
//  CrystalBall.swift
//  CrystalBall
//
//  Created by Isaac Williams on 7/11/14.
//  Copyright (c) 2014 Isaac Williams. All rights reserved.
//

import Foundation
import UIKit
import AudioToolbox

class CrystalBall : NSObject {
    var predictions: [String] = ["It is decidedly so", "Most certainly", "All signs say YES", "Assuredly", "It is doubtful", "My reply is no", "Not in a million years", "No", "Concentrate and ask again", "Better not tell you now", "Unable to answer now"]

    var randomPrediction: String {
    get {
        let random = Int(arc4random_uniform(UInt32(predictions.count)))
        return predictions[random]
    }
    }
}

class CrystalBallViewController : UIViewController {
    @IBOutlet var predictionLabel:UILabel
    @IBOutlet var backgroundImageView:UIImageView
    var soundEffect:SystemSoundID = 0
    let crystalBall = CrystalBall()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.predictionLabel.text = nil
        
        let soundPath = NSBundle.mainBundle().pathForResource("crystal_ball", ofType: "mp3")
        let soundURL = NSURL.fileURLWithPath(soundPath)
        AudioServicesCreateSystemSoundID(soundURL, &soundEffect)
        
        self.backgroundImageView.animationImages = [
            UIImage(named: "CB00001"),
            UIImage(named: "CB00002"),
            UIImage(named: "CB00003"),
            UIImage(named: "CB00004"),
            UIImage(named: "CB00005"),
            UIImage(named: "CB00006"),
            UIImage(named: "CB00007"),
            UIImage(named: "CB00008"),
            UIImage(named: "CB00009"),
            UIImage(named: "CB00010"),
            UIImage(named: "CB00011"),
            UIImage(named: "CB00012"),
            UIImage(named: "CB00013"),
            UIImage(named: "CB00014"),
            UIImage(named: "CB00015"),
            UIImage(named: "CB00016"),
            UIImage(named: "CB00017"),
            UIImage(named: "CB00018"),
            UIImage(named: "CB00019"),
            UIImage(named: "CB00020"),
            UIImage(named: "CB00021"),
            UIImage(named: "CB00022"),
            UIImage(named: "CB00023"),
            UIImage(named: "CB00024"),
            UIImage(named: "CB00025"),
            UIImage(named: "CB00026"),
            UIImage(named: "CB00027"),
            UIImage(named: "CB00028"),
            UIImage(named: "CB00029"),
            UIImage(named: "CB00030"),
            UIImage(named: "CB00031"),
            UIImage(named: "CB00032"),
            UIImage(named: "CB00033"),
            UIImage(named: "CB00034"),
            UIImage(named: "CB00035"),
            UIImage(named: "CB00036"),
            UIImage(named: "CB00037"),
            UIImage(named: "CB00038"),
            UIImage(named: "CB00039"),
            UIImage(named: "CB00040"),
            UIImage(named: "CB00041"),
            UIImage(named: "CB00042"),
            UIImage(named: "CB00043"),
            UIImage(named: "CB00044"),
            UIImage(named: "CB00045"),
            UIImage(named: "CB00046"),
            UIImage(named: "CB00047"),
            UIImage(named: "CB00048"),
            UIImage(named: "CB00049"),
            UIImage(named: "CB00050"),
            UIImage(named: "CB00051"),
            UIImage(named: "CB00052"),
            UIImage(named: "CB00053"),
            UIImage(named: "CB00054"),
            UIImage(named: "CB00055"),
            UIImage(named: "CB00056"),
            UIImage(named: "CB00057"),
            UIImage(named: "CB00058"),
            UIImage(named: "CB00059"),
            UIImage(named: "CB00060")
        ]
        
        self.backgroundImageView.animationDuration = 2.5
        self.backgroundImageView.animationRepeatCount = 1
    }
    
    func makePrediction() {
        self.backgroundImageView.startAnimating()
        self.predictionLabel.text = self.crystalBall.randomPrediction
        AudioServicesPlaySystemSound(soundEffect)
        
        UIView.animateWithDuration(6.0, animations: {
            self.predictionLabel.alpha = 1.0
        })
    }
    
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent!) {
        self.predictionLabel.text = nil
        self.predictionLabel.alpha = 0.0
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent!) {
        if motion == UIEventSubtype.MotionShake {
            self.makePrediction()
        }
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.predictionLabel.text = nil
        self.predictionLabel.alpha = 0.0
    }
    
    override func touchesEnded(touches: NSSet!, withEvent event: UIEvent!) {
        self.makePrediction()
    }
}