//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ben Mountain on 1/15/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let bmiValue = (weight / pow(height, 2))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.337456882, green: 0.6986249089, blue: 1, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0, green: 1, blue: 0.3097083569, alpha: 1))
            
        } else {
                bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 1, green: 0.1881328821, blue: 0.1740868986, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Your BMI advice will be displayed here"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
