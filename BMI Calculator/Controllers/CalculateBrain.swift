//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Артур  Арсланов on 05.08.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculateBrain {
//    var height: Float
//    var weight: Float
    var bmi: BMI?
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
       let bmiValue = weight / pow(height, 2)
       //bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Ear more pies", color: UIColor.blue)
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fir as a fiddle!", color: UIColor.green)
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
}
