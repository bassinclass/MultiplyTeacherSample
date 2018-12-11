//
//  ViewController.swift
//  MultiplyTeacherSample
//
//  Created by Fleischauer, Joseph on 10/10/18.
//  Copyright © 2018 Fleischauer, Joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var number1TextField: UITextField!
    @IBOutlet weak var number2TextField: UITextField!
    @IBOutlet weak var productLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onCalculateButtonTapped(_ sender: UIButton) {
        let number1 = Int(number1TextField.text!)
        productLabel.text = "\(number1)"
        number1TextField.resignFirstResponder()
        number2TextField.resignFirstResponder()
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        calculate()
        textField.resignFirstResponder()
        return true
    }
    
    func calculate() {
        if let number1 = Double(number1TextField.text!), let number2 = Double(number2TextField.text!) {
            let product = number1 * number2
            productLabel.text = "\(product)"
            if product.truncatingRemainder(dividingBy: 2) == 0{
            }
        }
        else {
           let alert = UIAlertController(title: "Empty TextField", message: "one of the textfields was left blank", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }


}

