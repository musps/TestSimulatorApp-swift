//
//  ViewController.swift
//  TestSimulatorApp
//
//  Created by Yildiz Sercan on 19/12/2019.
//  Copyright © 2019 MDS. All rights reserved.
//

import UIKit

class DegreesConvertionViewController: UIViewController {
    @IBOutlet weak var celsiusTextField: UITextField!
    @IBOutlet weak var fahrenheitTextField: UITextField!
    
    func calculateFahrenheit(celsius: Double) -> String {
        return String(celsius * 9 / 5 + 32)
    }

    func calculateCelsius(fahrenheit: Double) -> String {
        return String((fahrenheit - 32) * 5 / 9)
    }
        
    @IBAction func onChangeCelsius(_ sender: Any) {
        guard let celsius: Double = Double(celsiusTextField.text!) else {
            return
        }
        fahrenheitTextField.text = calculateFahrenheit(celsius: celsius)
    }

    @IBAction func onChangeFahrenheit(_ sender: Any) {
        guard let fahrenheit: Double = Double(fahrenheitTextField.text!) else {
            return
        }
        celsiusTextField.text = calculateCelsius(fahrenheit: fahrenheit)
    }
}
