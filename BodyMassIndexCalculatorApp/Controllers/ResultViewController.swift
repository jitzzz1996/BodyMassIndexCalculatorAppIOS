//
//  ResultViewController.swift
//  BodyMassIndexCalculatorApp
//
//  Created by USER on 03/07/21.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue : BMI?

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiResultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bmiResultLabel.text = String(self.bmiValue?.value ?? 0)
        self.adviceLabel.text = self.bmiValue?.advice
        self.view.backgroundColor = self.bmiValue?.color
    }

    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
