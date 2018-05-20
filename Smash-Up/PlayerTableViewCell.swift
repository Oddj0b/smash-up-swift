//
//  PlayerTableViewCell.swift
//  Smash-Up
//
//  Created by Villars Gimm on 20/05/2018.
//  Copyright © 2018 RibEye Studios. All rights reserved.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {
    //MARK: Properties
    @IBOutlet weak var playerNameTextField: UITextField!
    @IBOutlet weak var faction1: UIImageView!
    @IBOutlet weak var faction2: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
