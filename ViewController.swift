//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Victor Elizalde on 1/2/17.
//  Copyright © 2017 Victor Elizalde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var fingersTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    @IBAction func guess(_ sender: Any) {
        
        let randomNumber = arc4random_uniform(6)
        
        if fingersTextField.text == String(randomNumber) {
            
            resultLabel.text = "You´re right!"
            
        } else {
            
            resultLabel.text = "Wrong! It was \(randomNumber)"
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

