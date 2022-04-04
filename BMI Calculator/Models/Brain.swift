//
//  Brain.swift
//  BMI Calculator
//
//  Created by Marco Mascorro on 4/3/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct Brain {
    func calculateBmi(weight: Int, height: Float) -> Float{
        let bmi = Float(weight) / Float(height * height)
        return round(bmi * 10) / 10.0
    }
    func bmiAdvice(bmi: Float) -> String{
        
        var advice = ""
        
        if bmi < 17 {
            advice = " you are underweight!"
        } else if bmi > 17 && bmi <= 24{
            advice = "You are in healthy shape"
        } else if bmi >= 25 && bmi <= 29 {
            advice = "You are a little over weight"
        } else if bmi >= 30 && bmi <= 39 {
            advice = "You are overweight"
        } else {
            advice = "you are extremely overweight"
        }
        
        
        return advice
    }
    
    func roundDec(value: Float) -> Float {
        return round(value * 100) / 100.0
    }
    
    func roundInt(value: Float) -> Int {
        return Int(value)
    }
    
    
}
