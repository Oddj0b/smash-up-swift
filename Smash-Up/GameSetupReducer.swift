//
//  GameSetupReducer.swift
//  Smash-Up
//
//  Created by Villars Gimm on 22/02/2019.
//  Copyright © 2019 RibEye Studios. All rights reserved.
//

import ReSwift
import Dwifft

func gameSetupReducer(action: Action, state: AppState?) -> AppState{
    var state = state ?? AppState()

    switch action {
    case let addPlayerAction as GameSetupActionAddPlayer:
        state.players.append(addPlayerAction.player)
        break
    case let removePlayerAction as GameSetupActionRemovePlayer:
        state.players = state.players.filter({$0.id != removePlayerAction.id})
        break
    case let editPlayer as EditPlayer:
        state.editingPlayerState = EditingPlayerState(id: editPlayer.playerId, factionIndex: editPlayer.factionIndex)
        break
    case let setFaction as SetFaction:
        if let editingPlayerState = state.editingPlayerState{
            let playerId = editingPlayerState.id
            
            var player = state.players.first { $0.id == playerId }!
            let playerIndex = state.players.firstIndex(where:{$0.id == player.id})!
            if editingPlayerState.factionIndex == .faction1{
                player.faction1 = setFaction.faction
            }else{
                player.faction2 = setFaction.faction
            }
            state.players [playerIndex] = player
         }
        break
    default:
        break
    }

    return state
}
