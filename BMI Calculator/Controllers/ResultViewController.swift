//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Gbenga Abayomi on 30/10/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
//        bmiLabel.text = bmiValue
        // Do any additional setup after loading the view.
    }
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
