//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Andre Dias on 06/10/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    var fahrenheitValue: Double? {
        didSet{
            updateCelsiusLabel()
        }
    }
    
    var celsiusValue: Double? {
        if let value = fahrenheitValue{
            return (value - 32) * (5/9)
        }else{
            return nil
        }
    }
    
    let numberFormatter = { () -> NumberFormatter in
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }
    
    func updateCelsiusLabel(){
        if let value = celsiusValue {
            celsiusLabel.text = numberFormatter().string(from: value as NSNumber)
        }else{
            celsiusLabel.text = "???"
        }
    }
    
    @IBAction func fahrenheitFieldEditChanged(textField: UITextField){
        if let text = textField.text {
            if let value = Double(text) {
                fahrenheitValue = value
            }else{
                celsiusLabel.text = "???"
            }
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func dismissKeyboard(sender: AnyObject){
        textField.resignFirstResponder()
    }
    
}
