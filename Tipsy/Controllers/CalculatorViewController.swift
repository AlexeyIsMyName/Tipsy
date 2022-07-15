//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    private var tip = 0.0
    private var splitNumber = 0.0

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        switch sender.currentTitle { // 0%, 10%, 20%
        case "0%":
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            tip = 1.0 // 0%
        case "10%":
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            tip = 1.1 // 10%
        case "20%":
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            tip = 1.2 // 20%
        default:
            break
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%0.f", sender.value)
        splitNumber = sender.value
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        guard let bill = Double(billTextField.text ?? "0.00") else { return }
        let result = (bill * tip) / splitNumber
        let roundedResult = round(result * 100) / 100
        print(roundedResult)
    }
}

