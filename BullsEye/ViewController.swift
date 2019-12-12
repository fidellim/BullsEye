//
//  ViewController.swift
//  BullsEye
//
//  Created by Fidel Lim on 12/6/19.
//  Copyright © 2019 Fidel Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //current value of slider
    var currentValue: Int = 0
    var targetValue: Int = 0
    var score = 0
    var round = 0
    
    @IBOutlet weak var slider: UISlider!;
    @IBOutlet weak var randomTarget: UILabel!
    @IBOutlet weak var totalScore: UILabel!
    @IBOutlet weak var totalRound: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let roundedValue = slider.value.rounded() //round value
        currentValue = Int(roundedValue)
        
        startNewRound()
    }

    @IBAction func showAlert(){
        
        //getting difference of current and target value
        let difference = abs(targetValue - currentValue)
        var points = 100 - difference
        
        score += points
        
        let title: String
        if difference == 0 {
            title = "Perfect!"
            points += 100
        } else if difference < 5 {
            title = "You almost had it!"
            if difference == 1 {
                points += 50
            }
        } else if difference < 10 {
            title = "Pretty good!"
        } else {
            title = "Not even close..."
        }
        
        let message = "You scored \(points) points"
        
        //alert popup step1
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        //alert popup step2
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        //alert popup step3
        alert.addAction(action)
        
        //alert popup step4
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
    }
    
    @IBAction func whosThere(){
        
        //Action Sheet style
        //alert popup step1
        let alert = UIAlertController(title: "Knock Knock", message: "Who's There?", preferredStyle: .actionSheet)
        
        //alert popup step2
        let action = UIAlertAction(title: "You are beast!", style: .default, handler: nil)
        
        //alert popup step3
        alert.addAction(action)
        
        //alert popup step4
        present(alert, animated: true, completion: nil)
        
    }
    
    //get slider value
    @IBAction func sliderMoved(_ slider: UISlider) {
        print("The value of the slider is now:  \(slider.value) ")
        let roundedValue = slider.value.rounded() //round value
        currentValue = Int(roundedValue)
    }
    
    func startNewRound(){
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        round += 1
        updateLabels()
    }
    
    func updateLabels() {
        randomTarget.text = String(targetValue)
        totalScore.text = String(score)
        totalRound.text = String(round)
    }

}

