//
//  ResultViewController.swift
//  Smash-Up
//
//  Created by Villars Gimm on 30/05/2019.
//  Copyright © 2019 RibEye Studios. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    let gradientLayer = CAGradientLayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        createGradient()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        cycleGradient()
    }
    func createGradient() {
        gradientLayer.colors = [UIColor.red, UIColor.blue].map { $0.cgColor }
        gradientLayer.startPoint = CGPoint(x: 0, y:0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.view.bounds
        view.layer.addSublayer(gradientLayer)
    }
    func cycleGradient() {
        let gradientAnimation = CABasicAnimation(keyPath: #keyPath(CAGradientLayer.colors))
        gradientAnimation.fromValue = gradientLayer.colors
        gradientAnimation.toValue = [UIColor.purple, UIColor.yellow].map { $0.cgColor }
        gradientAnimation.duration = 3.0
        gradientAnimation.delegate = self
        gradientAnimation.fillMode = .forwards
        gradientAnimation.isRemovedOnCompletion = false
        gradientLayer.add(gradientAnimation, forKey: "colors")
    }
}
extension ResultViewController: CAAnimationDelegate {
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        if flag {
            
        }
    }
}
