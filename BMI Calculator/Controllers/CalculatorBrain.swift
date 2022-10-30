//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Gbenga Abayomi on 30/10/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain{
    var bmi: BMI?
    mutating func calculateBmiValue(height: Double, weight: Double){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: Float(bmiValue), advice: "Eat more pies", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: Float(bmiValue), advice: "Fit as a Fiddle", color: .green)
        } else {
            bmi = BMI(value: Float(bmiValue), advice: "Eat less pies", color: .red)
        }
    }
    func getBmiValue() -> String{
        let bmiValueTo1DP = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValueTo1DP
    }
}
