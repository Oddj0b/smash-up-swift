//
//  Player.swift
//  Smash-Up
//
//  Created by Villars Gimm on 26/04/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import Foundation

struct Player{
    let id: UUID = UUID()
    var playerName: String?
    var faction1: Faction?
    var faction2: Faction?
}
