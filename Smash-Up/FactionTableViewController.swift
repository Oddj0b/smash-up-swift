//
//  FactionTableViewController.swift
//  Smash-Up
//
//  Created by Villars Gimm on 23/09/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import UIKit

class FactionTableViewController: UITableViewController{
    var factionIndex: FactionIndex?
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tableView.register(UITableView.self, forCellReuseIdentifier: "FactionCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return store.state.factions.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.state.factions[section].count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedSection = store.state.factions[indexPath.section]
        let selectedFaction = selectedSection[indexPath.row]
        print((String(selectedFaction.factionName)))
        store.dispatch(SetFaction(faction: selectedFaction))
        performSegue(withIdentifier: "unwindToSetupTableVC", sender: self)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FactionCell", for: indexPath)
        let section = store.state.factions[indexPath.section]
        let faction = section[indexPath.row]
        cell.textLabel?.text = faction.factionName
        cell.imageView?.image = UIImage(named: faction.factionName)
        return cell
    }
    
}
