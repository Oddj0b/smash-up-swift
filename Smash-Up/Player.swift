//
//  Player.swift
//  Smash-Up
//
//  Created by Villars Gimm on 26/04/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import Foundation
class Player{
    var playerName: String
    var factions = [String]()
    
    init?(playerName: String){
        
        if playerName.isEmpty {
            return nil
        }
        self.playerName = playerName
    }
    func addFaction(faction: String){
            self.factions.append(faction)
    }
}
