//
//  ViewController.swift
//  Gimme Coffee!
//
//  Created by Kareena Arora on 10/3/20.
//  Copyright © 2020 Kareena Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hotSwitch: UISwitch!
    @IBOutlet weak var icedSwitch: UISwitch!
    @IBOutlet weak var bitterSwitch: UISwitch!
    @IBOutlet weak var sweetSwitch: UISwitch!
    @IBOutlet weak var energySlider: UISlider!
    @IBOutlet weak var hotlabel: UILabel!
    @IBOutlet weak var icedlabel: UILabel!
    @IBOutlet weak var energyLabel: UILabel!
    @IBOutlet weak var drinkNameLabel: UILabel!
    
    @IBOutlet weak var buttonGimme: UIButton!
    @IBAction func orderButton(_ sender: UIButton) {
        
        let mint = UIColor(red: 180/255, green: 238/255, blue: 180/255, alpha: 1)
        
        if buttonGimme.isSelected == true {
            buttonGimme.backgroundColor = UIColor.white
            buttonGimme.setTitleColor(UIColor.black, for: .normal)
            buttonGimme.isSelected = false
        } else {
            buttonGimme.backgroundColor = mint
            buttonGimme.setTitleColor(UIColor.black, for: .normal)
            buttonGimme.isSelected = true
        }
    
        generateOrder()
    }
    
    @IBAction func sliderEnergyChange(_ sender: UISlider) {
            let energyAmount = sender.value
            energyLabel.text = String(format: "%.0f" , energyAmount)
    }
    
    @IBAction func hotSwitchAction(_ sender: UISwitch) {
        icedSwitch.setOn(!sender.isOn, animated: true)
    }
    @IBAction func icedSwitchAction(_ sender: UISwitch) {
        hotSwitch.setOn(!sender.isOn, animated: true)
    }
    @IBAction func bitterSwitchAction(_ sender: UISwitch) {
        sweetSwitch.setOn(!sender.isOn, animated: true)
    }
    @IBAction func sweetSwitchAction(_ sender: UISwitch) {
        bitterSwitch.setOn(!sender.isOn, animated: true)
    }
    
//  to make sure that only 1 switch for each option is chosen, I looked at how to toggle between the two options to reduce any user errors https://stackoverflow.com/questions/40184609/swift-how-to-toggle-two-ui-switches
    

    func generateOrder() {
        
        if hotSwitch.isOn {
            
            let randomHot = Int.random(in: 1..<6)
            
            if randomHot == 1 {
                if bitterSwitch.isOn {
                    drinkNameLabel.text = "Latte with an Extra Espresso Shot"
                }
                else if sweetSwitch.isOn {
                    drinkNameLabel.text = "Extra Hot Caramel Latte"
                }
                else {
                    drinkNameLabel.text = "Extra Hot Latte"
                }
                
            }
            else if randomHot == 2 {
                if sweetSwitch.isOn && energyLabel.text == "5" || energyLabel.text == "6" {
                    drinkNameLabel.text = "A Cappucino with Extra Foam"
                }
                else {
                    drinkNameLabel.text = "A Cappucino"
                }
            }
            else if randomHot == 3 {
                drinkNameLabel.text = "An Americano"
            }
            else if randomHot == 4 {
                if energyLabel.text == "3" && sweetSwitch.isOn {
                    drinkNameLabel.text = "A Mocha with an Extra Espresso Shot and Extra Mocha"
                }
                else if energyLabel.text == "1" || energyLabel.text == "2" && bitterSwitch.isOn {
                    drinkNameLabel.text = "A Mocha with 2 Extra Espresso Shots"
                }
                else {
                    drinkNameLabel.text = "A Mocha"
                }
            }
            else if randomHot == 5 {
                if sweetSwitch.isOn{
                    drinkNameLabel.text = "A Honey Flat White"
                }
                else if bitterSwitch.isOn{
                    drinkNameLabel.text = "A Flat White"
                }
            }
        }
    
        else if icedSwitch.isOn {
            
            let randomIced = Int.random(in: 6..<11)
            
            if randomIced == 6 {
            
                if sweetSwitch.isOn && energyLabel.text == "4" {
                    drinkNameLabel.text = "Iced Vanilla Latte with an Extra Espresso Shot"
                }
                else if sweetSwitch.isOn {
                    drinkNameLabel.text = "Iced Vanilla Latte"
                }
                else {
                    drinkNameLabel.text = "Iced Latte"
                }
                
            }
            else if randomIced == 7 {
                if sweetSwitch.isOn {
                    drinkNameLabel.text = "Vanilla Cold Brew"
                }
                else {
                    drinkNameLabel.text = "Cold Brew"
                }
            }
            else if randomIced == 8 {
                if energyLabel.text == "5" {
                    if sweetSwitch.isOn {
                        drinkNameLabel.text = "Iced White Chocolate Mocha"
                    }
                    else if bitterSwitch.isOn {
                        drinkNameLabel.text = "Iced Mocha with an Extra Espresso Shot"
                    }
                }
                else {
                    drinkNameLabel.text = "Iced Mocha"
                }
            }
            else if randomIced == 9 {
                if energyLabel.text == "3" || energyLabel.text == "4" {
                    if bitterSwitch.isOn {
                        drinkNameLabel.text = "Iced Coffee with an Espresso Shot"
                    }
                    else if sweetSwitch.isOn {
                        drinkNameLabel.text = "Iced Hazelnut Coffee"
                    }
                }
                else {
                    drinkNameLabel.text = "Iced Coffee"
                }
            }
            else if randomIced == 10 {
                if energyLabel.text == "6" || energyLabel.text == "7" && sweetSwitch.isOn {
                        drinkNameLabel.text = "Iced Caramel Macchiato with Extra Caramel"
                }
                else {
                    drinkNameLabel.text = "Iced Caramel Macchiato"
                }
            }
        }
    }
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        buttonGimme.layer.borderWidth = 2.5
        buttonGimme.layer.cornerRadius = 9
        
        drinkNameLabel.backgroundColor = UIColor.white
        drinkNameLabel.layer.borderWidth = 0.25
        drinkNameLabel.layer.cornerRadius = 2

    }
}



//10 drinks total ???

//when hot switch is on, generate a random number 1-5 , if the number is 1, drinklabel.text = asjdf
    
//when iced switch is on, generate a random number 6-10, if the number is 7, drinkLabel.text = alsdjf
    
//if hotswitch is on, iced switch is off
//if icedswitch is on, hotswitch is off
//or an alert if can't figure out that ^
//if bitter switch is on, sweet switch is off
//switch case?
 //trying to flash it everytime the button is pressed to tell the user it is a button more intuitively
