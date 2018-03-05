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
    var players : UInt = 0
    @IBOutlet weak var playerList: UIStackView!
    @IBOutlet weak var addPlayerBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MSAppCenter.start("ee34b22f-7640-4af6-bbe2-af7e109e9d03", withServices:[
            MSAnalytics.self,
            MSCrashes.self
            ])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func howManyPlayers(){
        if playerList.arrangedSubviews.count == 4{
            addPlayerBtn.isEnabled = false
        } else{
            addPlayerBtn.isEnabled = true
        }
    }
    @IBAction func addPlayer(_ sender: Any) {
        let playerView = PlayerView()
        playerList.addArrangedSubview(playerView.view)
        howManyPlayers()
    }
    
}
