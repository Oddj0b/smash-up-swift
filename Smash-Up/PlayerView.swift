//
//  PlayerView.swift
//  Smash-Up
//
//  Created by Villars Gimm on 26/04/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import Foundation
import UIKit
class PlayerView: UICollectionView{
    var playerName: UILabel = UILabel()
    func addPlayer(){
        playerName.text = "Test label"
        self.addSubview(playerName)
    }
}
