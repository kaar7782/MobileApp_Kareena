//
//  ViewController.swift
//  Lab 4
//
//  Created by Kareena Arora on 10/4/20.
//  Copyright © 2020 Kareena Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var originalPrice: UITextField!
    @IBOutlet weak var percentUpdate: UILabel!
    @IBOutlet weak var percentStepper: UIStepper!
    @IBOutlet weak var finalCost: UILabel!
    
    @IBAction func updatePercentVal(_ sender: UIStepper){
        percentUpdate.text = String(format: "%.0f", percentStepper.value) + " %"
        saleCalc()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func saleCalc(){
        var price : Float
        var percent : Float
        
//        let textprice = originalPrice.text!

            if originalPrice.text!.isEmpty {
                price = 0.0
            }
            else {
                price = Float(originalPrice.text!)!
            }

//price = Float(originalPrice.text!) ?? 0.0
        
        percent = Float(percentStepper.value) / 100
        

        let num = 1 - percent
        let cost = price * num
        
        let percentVal = percentStepper.value
        
        if percentVal > 10 && percentVal < 70 {
            percent = Float(percentStepper.value) / 100
        }
        else {
            let alert=UIAlertController(title: "Warning", message: "The percent must be greater than 10%", preferredStyle: UIAlertController.Style.alert)
            
            let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(cancelAction)
            let okAction=UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {action in
                self.percentStepper.value = 10
                self.percentUpdate.text? = "10"
                self.saleCalc()
            })
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            }
        
        
        let currencyFormatter = NumberFormatter()
        currencyFormatter.numberStyle = NumberFormatter.Style.currency
        originalPrice.text=currencyFormatter.string(from: NSNumber(value: price))
        finalCost.text=currencyFormatter.string(from: NSNumber(value: cost))
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        saleCalc()
    }
    
    override func viewDidLoad() {
        originalPrice.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

