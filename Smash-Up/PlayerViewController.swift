//
//  PlayerView.swift
//  Smash-Up
//
//  Created by Villars Gimm on 26/04/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import Foundation
import UIKit
class PlayerView: UIViewController{
    var player = Player()
    @IBOutlet weak var playerName: UITextField!
    override func viewDidLoad() {
        print("PlayerView loaded")
    }
    
    func saveName(){
        print("Saving name")
        player.name = playerName.text
    }
    //MARK: TODO Make this use Player.swift object.
    //Factions should be a dictionary with faction1 or faction2 as key and selected faction as value.
    //Then you can delete key:value and insert a new one.
    @IBAction func selectFaction1(_ sender: Any) {
        print("Select first faction")
        //selectFaction()
    }
    func selectFaction(){
        print("Select your faction")
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let optionsVC = storyboard.instantiateViewController(withIdentifier: "FactionTableViewController")
//        optionsVC.modalPresentationStyle = .popover
//        self.present(optionsVC, animated: true){}
    }
    
} 
