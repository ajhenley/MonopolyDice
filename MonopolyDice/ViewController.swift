//
//  ViewController.swift
//  MonopolyDice
//
//  Created by MC Student on 6/19/18.
//  Copyright © 2018 MC Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var leftDie: UIImageView!
    @IBOutlet weak var rightDie: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        var leftNumber = Int(arc4random_uniform(5)) + 1
        var rightNumber = Int(arc4random_uniform(5)) + 1
        var leftIm:String = ""
        var rightIm:String = ""
        
        leftIm = "dice\(leftNumber).jpg"
        rightIm = "dice\(rightNumber).jpg"

        leftDie.image = UIImage(named: leftIm)
        rightDie.image = UIImage(named: rightIm)
        
        if leftNumber == rightNumber {
            displayLabel.textColor = UIColor.red
        } else {
            displayLabel.textColor = UIColor.black
        }
        
        displayLabel.text = String(leftNumber + rightNumber)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

