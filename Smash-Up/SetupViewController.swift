//
//  SetupViewController.swift
//  Smash-Up
//
//  Created by Villars Gimm on 14/07/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import UIKit

class SetupViewController: UIViewController{
    //let backgrouncolor = UIColor.randomColor()
    var players: [Player]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO: Make it interactable instead of this
        let player1 = Player()
        let player2 = Player()
        let player3 = Player()
        let player4 = Player()
        
        player1.name = "Danielle"
        player1.factions = ["Teddy Bears", "Dragons"]
        
        player2.name = "Peter"
        player2.factions = ["Ghosts", "Time travellers"]
        
        player3.name = "Flemming"
        player3.factions = ["Pirates", "Elder Things"]
        
        player4.name = "Lukas"
        player4.factions = ["Cyborg Apes", "Werewolves"]
        
        players = [player1, player2, player3, player4]
        
    
    }
    @IBAction func addPlayer(_ sender: Any) {
        print("Adding player view")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
