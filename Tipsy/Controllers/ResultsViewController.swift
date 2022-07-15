//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by ALEKSEY SUSLOV on 15.07.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var result: Double!
    var splitNumber: Int!
    var tipAmount: Double!
    
    override func viewDidLoad() {
        totalLabel.text = String(format: "%.2f", result)
        
        let split: Int = splitNumber ?? 0
        let tip: Int = Int(100 * (tipAmount ?? 0))
        settingsLabel.text = "Split between \(split) people, with \(tip)% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
