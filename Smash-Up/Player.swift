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
    var faction1: String
    var faction2: String
    
    init?(playerName: String, faction1: String, faction2: String){
        
        if playerName.isEmpty {
            return nil
        }
        self.playerName = playerName
        self.faction1 = faction1
        self.faction2 = faction2
    }
}
