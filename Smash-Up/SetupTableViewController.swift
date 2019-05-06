//
//  SetupViewController.swift
//  Smash-Up
//
//  Created by Villars Gimm on 19/03/2018.
//  Copyright © 2018 RibEye Studios. All rights reserved.
//

import UIKit
import ReSwift
import Dwifft
protocol factionSegueDelegator {
    func callSegueFromCell(playerData dataObject: Player)
}

class SetupTableViewController: UITableViewController, StoreSubscriber{
    //    var diffCalculator: TableViewDiffCalculator<Player>?
    
    typealias StoreSubscriberStateType = AppState
    var players = store.state.players
    
    @IBOutlet weak var numberOfPlayersLabel: UILabel!
    
    //MARK: TableView functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.subscribe(self)
    }
    func newState(state: AppState) {
        //numberOfPlayersLabel.text = "\(store.state.players.count)"
        self.tableView.reloadData()
    }
    @IBAction func addPlayer(_ sender: Any) {
        store.dispatch(generateNewPlayerAction(playerName: "Click to set name"))
        //        self.tableView.beginUpdates()
        //        self.tableView.insertRows(at: [IndexPath.init(row: players.count-1, section: 0)], with: .automatic)
        //        self.tableView.endUpdates()
    }
    override func viewDidAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.state.players.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "playerTableCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PlayerTableViewCell else {
            fatalError("The dequeued cell is not an instance of PlayerTableViewCell")
        }
        let player = store.state.players[indexPath.row]
        cell.playerId = player.id
        if let faction1 = player.faction1{
            cell.faction1.setImage(UIImage(named: faction1.factionName), for: .normal)
        }else{
            cell.faction1.setImage(nil, for: .normal)
        }
        if let faction2 = player.faction2{
            cell.faction2.setImage(UIImage(named: faction2.factionName), for: .normal)
        }else{
            cell.faction1.setImage(nil, for: .normal)
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let player = store.state.players[indexPath.row]
        store.dispatch(GameSetupActionRemovePlayer(id: player.id))
    }
    @IBAction func chooseFaction1(_ sender: UIButton) {
        guard let cell = sender.superview?.superview as? PlayerTableViewCell else{
            fatalError()
        }
        let playerId = cell.playerId!
        store.dispatch(EditPlayer(factionIndex: .faction1, playerId: playerId))
        performSegue(withIdentifier: "selectFactionSegue", sender: self)
    }
    @IBAction func chooseFaction2(_ sender: UIButton) {
        guard let cell = sender.superview?.superview as? PlayerTableViewCell else{
            fatalError()
        }
        let playerId = cell.playerId!
        store.dispatch(EditPlayer(factionIndex: .faction2, playerId: playerId))
        performSegue(withIdentifier: "selectFactionSegue", sender: self)
    }
    @IBAction func unwind(segue:UIStoryboardSegue) { }
}
