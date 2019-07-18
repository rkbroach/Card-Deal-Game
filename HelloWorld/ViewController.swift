//
//  ViewController.swift
//  HelloWorld
//
//  Created by Rohan Kevin Broach on 6/4/19.
//  Copyright © 2019 rkbroach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var leftScore = 0, rightScore = 0
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNo = Int.random(in: 2...14)
        let rightNo = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNo)")
        rightImageView.image = UIImage(named: "card\(rightNo)")
        
        
        if (leftNo > rightNo) {
            leftScore += 1
        } else if (rightNo > leftNo) {
            rightScore += 1
        } else {
            leftScore += 1
            rightScore += 1
        }
        
        leftScoreLabel.text = String(leftScore)
        rightScoreLabel.text = String(rightScore)
    }

 }

