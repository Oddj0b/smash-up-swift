//
//  Faction.swift
//  Smash-Up
//
//  Created by Villars Gimm on 26/04/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import Foundation
class Faction{
    var factionName: String
    var factionExpansion: String
    init?(factionName: String!, factionExpansion: String!){
        if factionName.isEmpty {
            return nil
        }
        self.factionName = factionName
        self.factionExpansion = factionExpansion
    }
}
