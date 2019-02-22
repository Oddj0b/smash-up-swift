//
//  Store.swift
//  Smash-Up
//
//  Created by Villars Gimm on 22/02/2019.
//  Copyright © 2019 RibEye Studios. All rights reserved.
//

import ReSwift

struct AppState: StateType {
    var numberOfPlayers: Int = 2
}


func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState()
}

let store = Store(
    reducer: appReducer,
    state: AppState()
    )
