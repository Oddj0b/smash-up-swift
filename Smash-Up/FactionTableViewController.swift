//
//  FactionTableViewController.swift
//  Smash-Up
//
//  Created by Villars Gimm on 23/09/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import UIKit

class FactionTableViewController: UITableViewController{
    let factions:[[String]] = [["Pirates", "Robots", "Aliens", "Ninjas", "Tricksters", "Zombies"],
                               ["Dragons","Mythinc Geeks","Sharks", "Tornadoes", "Superheroes"]]
    let expansions: [String] = ["Base game", "It's your fault"] //, "Obligatory Cthulhu expansion"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return factions.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return factions[section].count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return expansions[section]
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(factions[indexPath.section][indexPath.row])")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FactionCell", for: indexPath)
        let factionName = factions[indexPath.section][indexPath.row]
        cell.textLabel?.text = factionName
        cell.imageView?.image = UIImage(named: factionName)
        return cell
    }
}
