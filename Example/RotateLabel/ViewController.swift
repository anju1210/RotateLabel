//
//  ViewController.swift
//  RotateLabel
//
//  Created by Anju Singh Yadav on 02/02/2017.
//  Copyright (c) 2017 Anju Singh Yadav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var rotatingLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rotatingLabel.frame = CGRect(x: UIScreen.mainScreen().bounds.size.width/2 - 50, y: UIScreen.mainScreen().bounds.size.height / 2 - 50 , width: 100, height: 100 )
        self.view.addSubview(rotatingLabel)
        rotatingLabel.backgroundColor = UIColor.orangeColor()
        
        self.rotateView(rotatingLabel)
    }
    
    private func rotateView(targetView: UILabel, duration: Double = 1.0) {
        
        UIView.animateWithDuration(duration, delay: 0.0, options: UIViewAnimationOptions.CurveLinear, animations: { () -> Void in
            
            targetView.transform = CGAffineTransformMakeRotation(CGFloat(M_PI));
            
            }, completion: { (finished: Bool) -> Void in
                self.rotateView(targetView, duration: duration)
        })
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

