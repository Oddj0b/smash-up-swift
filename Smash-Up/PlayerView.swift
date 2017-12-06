//
//  PlayerView.swift
//  Smash-Up
//
//  Created by Villars Gimm on 26/04/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import Foundation
import UIKit
class PlayerView: UIView{
    var playerName: UILabel = UILabel()
    var faction1: UIButton = UIButton()
    var faction2: UIButton = UIButton()
    var playerFrame: CGRect = CGRect(x: 0, y: 0, width: 200, height: 95)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
