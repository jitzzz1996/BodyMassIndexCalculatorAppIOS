//
//  calculateBMI.swift
//  BodyMassIndexCalculatorApp
//
//  Created by USER on 03/07/21.
//

import Foundation
struct CalculateBMI {
    var bmi : BMI?
    
    func getBMI() -> BMI? {
        return self.bmi
    }
    
    mutating func calciulateBmiResult(_ weight: Float, _ height: Float) {
        let bmiValue =  weight/(height*height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more carbohydreate!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.5 {
            bmi = BMI(value: bmiValue, advice: "Greeat You are Fit!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less carbohydreate!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
}
