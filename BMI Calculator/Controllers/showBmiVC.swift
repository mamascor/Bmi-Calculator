//
//  showBmiVCViewController.swift
//  BMI Calculator
//
//  Created by Marco Mascorro on 4/3/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class showBmiVC: UIViewController {

    var bmiValue: Float = 0.0
    var bmiadvice: String = ""
    let brain = Brain()

    @IBOutlet weak var bmiNumber: UILabel!
    @IBOutlet weak var AdviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiNumber.text = "\(bmiValue)"
        AdviceLabel.text = bmiadvice
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
