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
    
    @IBOutlet weak var slider: UISlider!;
    @IBOutlet weak var randomTarget: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let roundedValue = slider.value.rounded() //round value
        currentValue = Int(roundedValue)
        
        targetValue = Int.random(in: 1...100)
        randomTarget.text = String(targetValue)
    }

    @IBAction func showAlert(){
        
        let message = "The value of the slider is: \(currentValue)" +
            "\nThe target value is \(targetValue)"
        
        //alert popup step1
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        
        //alert popup step2
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        //alert popup step3
        alert.addAction(action)
        
        //alert popup step4
        present(alert, animated: true, completion: nil)
        
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

}

