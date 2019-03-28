//
//  Store.swift
//  Smash-Up
//
//  Created by Villars Gimm on 22/02/2019.
//  Copyright © 2019 RibEye Studios. All rights reserved.
//

import ReSwift

struct AppState: StateType {
    var players = [Player]()
    var editingPlayerState: EditingPlayerState?
    var factions = [
        [
            Faction(factionName: "Pirates", factionExpansion: "Base Game"),
            Faction(factionName: "Aliens", factionExpansion: "Base Game")
        ],
        [
            Faction(factionName: "Bear Cavalry", factionExpansion: "Awesome Level 9000")
        ]
    ]
}
struct EditingPlayerState{
    var id: UUID
    var factionIndex: FactionIndex
}
struct PlayingState{
    
}
let store = Store(
    reducer: gameSetupReducer,
    state: AppState()
    )
