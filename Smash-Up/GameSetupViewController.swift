//
//  GameSetupViewController.swift
//  Smash-Up
//
//  Created by Villars Gimm on 26/04/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import UIKit

private let reuseIdentifier = "PlayerCell"

class GameSetupViewController: UICollectionViewController {
    let Players = ["Danielle", "Villars", "Peter", "Flemming"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 90, height: 90)
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView!.dataSource = self
        collectionView!.delegate = self
        collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView!.backgroundColor = UIColor.white
        self.view.addSubview(collectionView!)
    }
    
    // MARK: UICollectionViewDataSource
override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return Players.count
    }


override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        cell.backgroundColor = UIColor.black
        
        return cell
    }
}
