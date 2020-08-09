//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Miroslav Hnát on 02/08/2020.
//  Copyright © 2020 Miroslav Hnát. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(sender.value)
    }
}

