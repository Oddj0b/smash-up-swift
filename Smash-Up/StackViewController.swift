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
        print("Presseing")
        let imageView = UIImageView.init(image: #imageLiteral(resourceName: "smash-up"))
        playerList.addArrangedSubview(imageView)
        NSLog("Arranged subviews", playerList.arrangedSubviews)
    }
}
