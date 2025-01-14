//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
        
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        calculatorBrain.calculateBmiValue(height: Double(height), weight: Double(weight))
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    let bmiResult = ResultViewController()
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "go to result" {
//            let destinationVC = segue.destination as! ResultViewController
            bmiResult.bmiValue = calculatorBrain.getBmiValue()
        }
    }
    
    }
