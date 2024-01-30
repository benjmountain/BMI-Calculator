//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Ben Mountain on 1/14/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
          
        view.backgroundColor = .red
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRectMake(0, 0, 100, 100)
        view.addSubview(label)
    }
}
