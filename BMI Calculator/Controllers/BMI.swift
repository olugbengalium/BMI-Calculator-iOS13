//
//  BMI.swift
//  BMI Calculator
//
//  Created by Gbenga Abayomi on 30/10/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit
struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float, advice: String, color: UIColor) {
        self.value = value
        self.advice = advice
        self.color = color
    }
    
}
