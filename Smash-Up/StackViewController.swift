//
//  StackViewController.swift
//  Smash-Up
//
//  Created by Villars Gimm on 06/12/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

class StackViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MSAppCenter.start("ee34b22f-7640-4af6-bbe2-af7e109e9d03", withServices:[
            MSAnalytics.self,
            MSCrashes.self
            ])
    }
    
    
}
