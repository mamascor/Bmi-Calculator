//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let brain = Brain()
    
    var weight: Int = 0
    var height: Float = 0.0
    var bmi: Float = 0.0

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        weight = 100
        height = 1.50
        heightLabel.text = "\(height)m"
        weightLabel.text = "\(weight)"
        
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        let value = sender.value
        let roundedValue = brain.roundDec(value: value)
        height = roundedValue
        heightLabel.text = "\(roundedValue)m"
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        let value = sender.value
        let roundedValue = brain.roundInt(value: value)
        weight = roundedValue
        weightLabel.text = "\(roundedValue)kg"
    }
    @IBAction func calculateBmi(_ sender: Any) {
        bmi = brain.calculateBmi(weight: weight, height: height)
       
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"{
            let destinationVC = segue.destination as! showBmiVC
            destinationVC.bmiValue = bmi
            destinationVC.bmiadvice = brain.bmiAdvice(bmi: bmi)
        }
    }
}

