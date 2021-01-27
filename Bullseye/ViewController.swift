//
//  ViewController.swift
//  Bullseye
//
//  Created by suraj singh on 24/01/21.
//  Copyright © 2021 technocrats. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var numSlider: UISlider!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var exactSwitch: UISwitch!
    @IBOutlet weak var playAgainButton: UIButton!
    
    var counter = 0
    var random = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        random = Int(arc4random_uniform(101))
        textLabel.text = "move the slider to : \(random)"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkValueResult(_ sender: Any) {
        if exactSwitch.isOn == false {
            if Int(numSlider.value) >= random-3 && Int(numSlider.value) <= random+3 {
                resultLabel.text = "you were right on point !"
                resultLabel.backgroundColor = UIColor.green
            } else{
                resultLabel.text = "Whoops you missed ! Try again later"
                resultLabel.backgroundColor = UIColor.red
            }
        } else {
            if random == Int(numSlider.value) {
                resultLabel.text = "you were right on point !"
                resultLabel.backgroundColor = UIColor.green
            } else{
                resultLabel.text = "Whoops you missed ! Try again later"
                resultLabel.backgroundColor = UIColor.red
            }
        }
        resultLabel.isHidden = false
        playAgainButton.isHidden = false
    
    }
    @IBAction func playAgain(_ sender: Any) {
        numSlider.setValue(50.00, animated: false)
        random = Int(arc4random_uniform(101))
        textLabel.text = "move the slider to : \(random)"
        resultLabel.isHidden = true
        playAgainButton.isHidden = true
        
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        
    }
    
}

