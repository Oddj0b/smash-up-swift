//
//  FactionTableViewController.swift
//  Smash-Up
//
//  Created by Villars Gimm on 23/09/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import UIKit
import os.log

class FactionTableViewController: UITableViewController{
    var factions = [Faction]()
    //[[String]] = [["Pirates", "Robots", "Aliens", "Ninjas", "Tricksters", "Zombies"],["Dragons","Mythinc Geeks","Sharks", "Tornadoes", "Superheroes"], ["Cthulhu Cultist", "Elder things", "Innsmouth", "Miskatonic university"]]
    //let expansions: [String] = ["Base game", "It's your fault", "Obligatory Cthulhu expansion"]
    var selectedFactionName: String = ""
    var selectedExpansionName: String = ""
    var delegate:FactionDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        loadFaction()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return factions.count
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return factions.count
    }
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return expansions[section]
//    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedFaction = factions[indexPath.row]
        selectedExpansionName = selectedFaction.factionExpansion
        print((String(selectedFaction.factionName)))
        delegate?.factionSelected(type: selectedFaction)
        performSegue(withIdentifier: "unwindToSetupTableVC", sender: self)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FactionCell", for: indexPath)
        let faction = factions[indexPath.row]
        cell.textLabel?.text = faction.factionName
        cell.imageView?.image = UIImage(named: faction.factionName)
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
//        if (segue.identifier == "factionSegue"){
//            let viewController = segue.destination as? SetupTableViewController
//            viewController?.passedFaction1 = selectedFactionName
//        } else{
//            let viewController = segue.destination as? SetupTableViewController
//            viewController?.passedFaction2 = selectedFactionName
//        }
    }
    func loadFaction(){
        guard let pirates = Faction(factionName: "Pirates", factionExpansion: "Base Game") else {
            fatalError("Unable to create pirates faction")
        }
        guard let aliens = Faction(factionName: "Aliens", factionExpansion: "Base Game") else {
            fatalError("Unable to create aliens faction")
        }
        guard let tricksters = Faction(factionName: "Tricksters", factionExpansion: "Base Game") else {
            fatalError("Unable to create tricksters faction")
        }
        guard let dinosaurs = Faction(factionName: "Dinosaurs", factionExpansion: "Base Game") else {
            fatalError("Unable to create dinosaurs faction")
        }
        guard let ninja = Faction(factionName: "Ninja", factionExpansion: "Base Game") else {
            fatalError("Unable to create ninja faction")
        }
        guard let wizards = Faction(factionName: "Wizards", factionExpansion: "Base Game") else {
            fatalError("Unable to create wizards faction")
        }
        factions.append(contentsOf: [pirates,aliens,tricksters,dinosaurs,ninja,wizards])
    }
}
