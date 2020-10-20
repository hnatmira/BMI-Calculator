//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Miroslav Hnát on 02/08/2020.
//  Copyright © 2020 Miroslav Hnát. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    var bmiValue: String?
    
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightValueSlider: UISlider!
    @IBOutlet weak var weightValueSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightValueLabel.text = String(format: "%.2f m", sender.value)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValueLabel.text = String(format: "%.1f Kg", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        let height = heightValueSlider.value
        let weight = weightValueSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
        }
    }
    
}

