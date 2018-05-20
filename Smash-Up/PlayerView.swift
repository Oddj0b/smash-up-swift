//
//  PlayerViewController.swift
//  Smash-Up
//
//  Created by Villars Gimm on 19/03/2018.
//  Copyright © 2018 RibEye Studios. All rights reserved.
//

import UIKit


class PlayerViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var playerNameField: UITextField!
    var player = Player(playerName: "Type in players name", playerFactions: [String:String])
    
    
    override func viewDidLoad() {
        //TODO: Implement init with constraints
        super.viewDidLoad()
        playerName?.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        player.setPlayerName(playerName: )
    }
    @IBAction func setName(_ sender: Any) {
        
    }
    @IBAction func selectFaction1(_ sender: Any) {
    }
    @IBAction func selectFaction2(_ sender: Any) {
    }
}
