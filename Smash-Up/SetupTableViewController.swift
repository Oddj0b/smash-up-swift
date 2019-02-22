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

class SetupTableViewController: UITableViewController, StoreSubscriber {
    typealias StoreSubscriberStateType = AppState
    var players = [Player]()
    
    @IBOutlet weak var numberOfPlayersLabel: UILabel!
    
    //MARK: TableView functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainstore.subscribe(self)
    }
    func newState(state: AppState) {
        numberOfPlayersLabel.text = "\(mainstore.state.numberOfPlayers)"
    }
    @IBAction func addPlayer(_ sender: Any) {
        mainstore.dispatch(GameSetupActionIncreasePlayer())
        var player =  Player(playerID: mainstore.state.numberOfPlayers, playerName: "Click to name player", factions: [])
        players.append(player)
        self.tableView.beginUpdates()
        self.tableView.insertRows(at: [IndexPath.init(row: players.count-1, section: 0)], with: .automatic)
        self.tableView.endUpdates()
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
        return cell
    }
    
    var player: Player? {
        didSet {
            guard let player = player else
                { return }
        }
    }
}
