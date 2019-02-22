//
//  SetupViewController.swift
//  Smash-Up
//
//  Created by Villars Gimm on 19/03/2018.
//  Copyright © 2018 RibEye Studios. All rights reserved.
//

import UIKit
import os.log
import ReSwift
protocol factionSegueDelegator {
    func callSegueFromCell(playerData dataObject: Player)
}

class SetupTableViewController: UITableViewController, FactionDelegate, StoreSubscriber {
    typealias StoreSubscriberStateType = AppState
    var players = [Player]()
    var passedFaction1:String = ""
    var passedFaction2:String = ""
    var cellID:Int = 0
    
    @IBOutlet weak var numberOfPlayersLabel: UILabel!
    //MARK: FactionDelegate fcuntions
    func factionSelected(type: Faction) {
        let player = players[cellID]
        player.addFaction(faction: type)
        print(players)
    }
    
    //MARK: TableView functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //loadSamplePlayers()
        
        mainstore.subscribe(self)
    }
    func newState(state: AppState) {
        numberOfPlayersLabel.text = "\(mainstore.state.numberOfPlayers)"
    }
    @IBAction func addPlayer(_ sender: Any) {
        mainstore.dispatch(GameSetupActionIncreasePlayer())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainstore.state.numberOfPlayers
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "playerTableCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PlayerTableViewCell else {
            fatalError("The dequeued cell is not an instance of PlayerTableViewCell")
        }
        cellID = indexPath.row
        
        //cell.playerNameTextField.text = player.playerName
        return cell
    }
    
    func callSegueFromCell(playerData dataObject: Player){
        self.performSegue(withIdentifier: "selectFaction1", sender: dataObject)
    }
    
    //MARK: Helpers
    private func loadSamplePlayers(){
        guard let player1 = Player(playerName: "Danielle") else {
            fatalError("Unable to create player1")
        }
        guard let player2 = Player(playerName: "Peter") else {
            fatalError("Unable to create player2")
        }
        players.append(contentsOf: [player1, player2])
    }
    @IBAction func unwindToSetupTableVC(segue:UIStoryboardSegue) { }
}
