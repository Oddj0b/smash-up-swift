//
//  SetupViewController.swift
//  Smash-Up
//
//  Created by Villars Gimm on 19/03/2018.
//  Copyright © 2018 RibEye Studios. All rights reserved.
//

import UIKit
import os.log
protocol factionSegueDelegator {
    func callSegueFromCell(playerData dataObject: Player)
}

class SetupTableViewController: UITableViewController {
    //var numberOfPlayers:Int = 2
    
    var players = [Player]()
    
    //MARK: TableView functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSamplePlayers()
    }
    
    
    @IBAction func addPlayer(_ sender: Any) {
        let playerNumber: Int = 1
        let activePlayers: Int = players.count
        let nextPlayer: Int = playerNumber + activePlayers
        print(nextPlayer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "playerTableCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PlayerTableViewCell else {
            fatalError("The dequeued cell is not an instance of PlayerTableViewCell")
        }
        let player = players[indexPath.row]
        
        cell.playerNameTextField.text = player.playerName
        return cell
    }
    func callSegueFromCell(playerData dataObject: Player){
        self.performSegue(withIdentifier: "selectFaction1", sender: dataObject)
    }
    
    //MARK: Helpers
    //    func moreThanFourPlyers(){
    //        if numberOfPlayers >= 4{
    //            print("All seats have been taken")
    //            addPlayerButton.isUserInteractionEnabled = false
    //        }else{
    //            print("Room for \(4 - numberOfPlayers) more players")
    //        }
    //    }
    private func loadSamplePlayers(){
        guard let player1 = Player(playerName: "Danielle") else {
            fatalError("Unable to create player1")
        }
        player1.addFaction(faction: "Pirates")
        player1.addFaction(faction: "Dragons")
        guard let player2 = Player(playerName: "Peter") else {
            fatalError("Unable to create player2")
        }
        player2.addFaction(faction: "Vampires")
        player2.addFaction(faction: "Kung-fu fighters")
        guard let player3 = Player(playerName: "Flemming") else {
            fatalError("Unable to create player3")
        }
        player3.addFaction(faction: "Sharks")
        player3.addFaction(faction: "Elder things")
        players += [player1, player2]
    }
    @IBAction func unwindToSetupTableVC(segue:UIStoryboardSegue) { }
}
