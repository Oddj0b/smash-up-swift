//
//  StackViewController.swift
//  Smash-Up
//
//  Created by Villars Gimm on 06/12/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import UIKit

class StackViewController: UIViewController {
    @IBOutlet weak var playerList: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addPlayer(_ sender: Any) {
        let view = makePlayerView()
        playerList.addArrangedSubview(view)
    }
    
    func makePlayerView() -> UIView {
        let playerView = UIView()
        playerView.backgroundColor = UIColor.randomColor()
        let nameLabel = UILabel()
        nameLabel.text = "Enter player name"
        playerView.addSubview(nameLabel)
        let faction1 = UIButton()
        faction1.titleLabel?.text = "Select first faction"
        playerView.addSubview(faction1)
        let faction2 = UIButton()
        faction2.titleLabel?.text = "Select second faction"
        playerView.addSubview(faction2)
        return playerView
    }
}
