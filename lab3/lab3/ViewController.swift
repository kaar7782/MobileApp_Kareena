//
//  ViewController.swift
//  lab3
//
//  Created by Kareena Arora on 9/19/20.
//  Copyright © 2020 Kareena Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var holidayImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var fontSizeLabel: UILabel!
    @IBOutlet weak var capitalSwitch: UISwitch!
    @IBOutlet weak var fontSizeSlider: UISlider!
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBOutlet weak var colorSwitch: UISwitch!
    
    
    func updateHolidayImage(){
         if imageControl.selectedSegmentIndex == 0{
            holidayImage.image = UIImage(named: "Halloween")
            titleLabel.text = "Halloween"
        }
        else if imageControl.selectedSegmentIndex == 1{
            holidayImage.image = UIImage(named: "Thanksgiving")
            titleLabel.text = "Thanksgiving"
        }
        else if imageControl.selectedSegmentIndex == 2{
            holidayImage.image = UIImage(named: "Christmas")
            titleLabel.text = "Christmas"
        }
    }
    func updateCaps(){
        if capitalSwitch.isOn{
            titleLabel.text = titleLabel.text?.uppercased()
        }
        else{
            titleLabel.text = titleLabel.text?.lowercased()
        }
    }
    func changeFontColor(){
        let swiftColorH = UIColor(red: 1, green: 165/255, blue: 0, alpha: 1)
        let swiftColorT = UIColor.brown
        let swiftColorC = UIColor.red
        
        if colorSwitch.isOn && imageControl.selectedSegmentIndex == 0{
            titleLabel.textColor = swiftColorH
        }
        else if colorSwitch.isOn && imageControl.selectedSegmentIndex == 1{
            titleLabel.textColor = swiftColorT
        }
        else if colorSwitch.isOn && imageControl.selectedSegmentIndex == 2{
            titleLabel.textColor = swiftColorC
        }
        else {
            titleLabel.textColor = UIColor.black
        }

    }

    
    @IBAction func changeHoliday(_ sender: UISegmentedControl) {
        updateHolidayImage()
        updateCaps()
    }
    
    @IBAction func updateFont(_ sender: UISwitch) {
        updateCaps()
    }
    
    @IBAction func changeFontSize(_ sender: UISlider) {
        let fontSize = sender.value
        fontSizeLabel.text = String(format: "%.0f" , fontSize)
        let fontSizeCGFloat = CGFloat(fontSize)
        titleLabel.font = UIFont.systemFont(ofSize: fontSizeCGFloat)
    }
    
    @IBAction func updateFontColor(_ sender: UISwitch) {
        changeFontColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

