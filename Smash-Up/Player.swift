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
    var playerFactions: [String:String]
    
    init(playerName: String, playerFactions: [String:String]){
        self.playerName = playerName
        self.playerFactions = playerFactions
    }
}
