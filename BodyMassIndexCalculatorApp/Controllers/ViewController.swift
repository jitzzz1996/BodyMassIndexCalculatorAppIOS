//
//  ViewController.swift
//  BodyMassIndexCalculatorApp
//
//  Created by USER on 03/07/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    var result: Float = 0.0
    private var calculateBMI = CalculateBMI()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func heightSliderAction(_ sender: Any) {
        let height =  String(format: "%.2f", self.heightSlider.value)
        self.heightLabel.text = height + " Mtr."
    }

    @IBAction func weightSliderAction(_ sender: Any) {
        let weight =  String(format: "%.0f", self.weightSlider.value)
        self.weightLabel.text = weight + " KG."
    }

    @IBAction func calculatorButtonAction(_ sender: Any) {
        let height = self.heightSlider.value
        let weight = self.weightSlider.value
        self.calculateBMI.calciulateBmiResult(weight,height)
        self.performSegue(withIdentifier: "goToResultPageSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultPageSegue" {
            let destinationVC = segue.destination as! ResultViewController
            if let bmi = self.calculateBMI.getBMI() {
                destinationVC.bmiValue = bmi
            }
        }
    }
    
}

