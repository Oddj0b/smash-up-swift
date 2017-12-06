//
//  StackViewController.swift
//  Smash-Up
//
//  Created by Villars Gimm on 06/12/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import UIKit

class StackViewController: UIViewController {
    
    @IBOutlet weak var adjustPlayers: UIStepper!
    @IBOutlet weak var playerList: UIStackView!
    @IBOutlet weak var howManyPlayers: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adjustPlayers.minimumValue = 2.0
        adjustPlayers.maximumValue = 4.0
        let currentNumberOfPlayers = adjustPlayers.value
        howManyPlayers.text = "\(currentNumberOfPlayers) players"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func adjustPlayerClick(_ sender: Any) {
        let currentNumberOfPlayers = adjustPlayers.value
        howManyPlayers.text = "\(currentNumberOfPlayers) players"
        let rect = CGRect(x: 0, y: 0, width: 200, height: 95)
        let playerView = PlayerView.init(frame: rect)
        playerView.backgroundColor = .yellow
        addPlayer(player: playerView)
        NSLog("Adding player", playerView)
        
    }
    func addPlayer(player: UIView){
        playerList.addArrangedSubview(player)
        NSLog("Arranged subviews", playerList.arrangedSubviews)
    }
}
