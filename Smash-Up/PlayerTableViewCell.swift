//
//  PlayerTableViewCell.swift
//  Smash-Up
//
//  Created by Villars Gimm on 14/07/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {
    @IBOutlet private weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDataSource & UICollectionViewDelegate>
        (dataSourceDelegate: D, forRow row: Int) {
            collectionView.dataSource = dataSourceDelegate
            collectionView.delegate = dataSourceDelegate
            collectionView.tag = row
            collectionView.reloadData()
    }
}
