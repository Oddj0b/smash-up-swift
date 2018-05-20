//
//  SetupViewController.swift
//  Smash-Up
//
//  Created by Villars Gimm on 19/03/2018.
//  Copyright © 2018 RibEye Studios. All rights reserved.
//

import UIKit

class SetupViewController: UIViewController {
    @IBOutlet weak var addPlayerButton: UIButton!
    var numberOfPlayers:Int = 2
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
//        showPlayer(playerNumber: numberOfPlayers)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func moreThanFourPlyers(){
        if numberOfPlayers >= 4{
            print("All seats have been taken")
            addPlayerButton.isUserInteractionEnabled = false
        }else{
            print("Room for \(4 - numberOfPlayers) more players")
        }
    }
//    func showPlayer(playerNumber:Int){
//        switch numberOfPlayers {
//        case 3:
//            player3.isHidden = false
//        case 4:
//            player4.isHidden = false
//        default:
//            player3.isHidden = true
//            player4.isHidden = true
//        }
//    }
//    @IBAction func addPlayer(_ sender: UIButton) {
//        numberOfPlayers += 1
//        moreThanFourPlyers()
//        print("Number of players in lobby: ", numberOfPlayers)
//        showPlayer(playerNumber: numberOfPlayers)
//    }
}
