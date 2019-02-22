//
//  GameSetupReducer.swift
//  Smash-Up
//
//  Created by Villars Gimm on 22/02/2019.
//  Copyright © 2019 RibEye Studios. All rights reserved.
//

import ReSwift

func gameSetupReducer(action: Action, state: AppState?) -> AppState{
    var state = state ?? AppState()

    switch action {
    case _ as GameSetupActionIncreasePlayer:
        state.numberOfPlayers += 1
    case _ as GameSetupActionDecreasePlayer:
        state.numberOfPlayers -= 1
    default:
        break
    }

    return state
}
