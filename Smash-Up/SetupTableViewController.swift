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
    //MARK: Properties
    @IBOutlet weak var addPlayerButton: UIButton!
    //var numberOfPlayers:Int = 2
    
    var players = [Player]()
    
    //MARK: TableView functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSamplePlayers()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
//    func moreThanFourPlyers(){
//        if numberOfPlayers >= 4{
//            print("All seats have been taken")
//            addPlayerButton.isUserInteractionEnabled = false
//        }else{
//            print("Room for \(4 - numberOfPlayers) more players")
//        }
//    }
    
    
    //MARK: Helpers
    private func loadSamplePlayers(){
        guard let player1 = Player(playerName: "Danielle", faction1: "Pirates", faction2: "Dragons") else {
            fatalError("Unable to create player1")
        }
        
        guard let player2 = Player(playerName: "Peter", faction1: "Vampires", faction2: "Kung-fu fighters") else {
            fatalError("Unable to create player2")
        }
        guard let player3 = Player(playerName: "Flemming", faction1: "Sharks", faction2: "Elder things") else {
            fatalError("Unable to create player3")
        }
        players += [player1, player2, player3]
    }
    @IBAction func unwindToSetupTableVC(segue:UIStoryboardSegue) { }
}
