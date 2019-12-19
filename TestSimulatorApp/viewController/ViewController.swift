//
//  ViewController.swift
//  TestSimulatorApp
//
//  Created by Yildiz Sercan on 19/12/2019.
//  Copyright © 2019 MDS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myName: UITextField!

    override func viewDidLoad() {
        myLabel.text = "Say hello"
    }

    @IBAction func sayHelloPressed(_ sender: Any) {
        print("Say hello")
        
        if let text = myName.text {
            myLabel.text = "Hello \(text)"
        }
    }

    @IBAction func onUserSendName(_ sender: Any) {
    }
}
