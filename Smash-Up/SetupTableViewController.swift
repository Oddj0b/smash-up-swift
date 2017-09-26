//
//  SetupTableViewController.swift
//  Smash-Up
//
//  Created by Villars Gimm on 14/07/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import UIKit

class SetupTableViewController: UITableViewController {
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
        
        print(player4.factions![0])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let p = players {
            return p.count
        }
        
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //TODO: Use SetupTableViewCell instead of generic cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)
        
        let player = players?[indexPath.row]
        
        if let p = player{
            cell.textLabel?.text = p.name
            
            
//            cell.backgroundColor? = UIColor.randomColor()
        }
        return cell
    }
    
}

