//
//  SetupTableViewCell.swift
//  Smash-Up
//
//  Created by Villars Gimm on 06/09/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import UIKit

class SetupTableViewCell: UITableViewCell {
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var faction1: UIButton!
    @IBOutlet weak var faction2: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    func update(with player: Player){
        playerName.text = player.name
        faction1.titleLabel?.text = player.factions![0]
        faction2.titleLabel?.text = player.factions![1]
    }
}
