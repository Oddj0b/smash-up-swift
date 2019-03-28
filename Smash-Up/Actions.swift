//
//  Actions.swift
//  Smash-Up
//
//  Created by Villars Gimm on 22/02/2019.
//  Copyright © 2019 RibEye Studios. All rights reserved.
//

import ReSwift

struct GameSetupActionAddPlayer: Action {
    let player: Player
}
struct GameSetupActionRemovePlayer: Action {
    let id: UUID
}
struct GameSetupActionSetPlayerName: Action {}
struct GameSetupActionAddFaction: Action {}
func generateNewPlayerAction (playerName: String) -> GameSetupActionAddPlayer{
    var player = Player()
    player.playerName = playerName
    return GameSetupActionAddPlayer.init(player: player)
}
enum FactionIndex {
    case faction1
    case faction2
}
struct EditPlayer: Action{
    let factionIndex: FactionIndex
    let playerId: UUID
}
struct SetFaction:Action {
    let faction: Faction
}
