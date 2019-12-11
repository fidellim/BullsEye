//
//  ViewController.swift
//  BullsEye
//
//  Created by Fidel Lim on 12/6/19.
//  Copyright © 2019 Fidel Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(){
        
        //alert popup step1
        let alert = UIAlertController(title: "Hello World!", message: "This is my first app1", preferredStyle: .alert)
        
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

}

