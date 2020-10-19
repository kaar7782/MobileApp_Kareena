//
//  Scene2VCViewController.swift
//  favs
//
//  Created by Kareena Arora on 10/18/20.
//  Copyright © 2020 Kareena Arora. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var userIce: UITextField!
    
    @IBOutlet weak var userDessert: UITextField!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "doneFavs"{
            let scene1ViewController = segue.destination as! ViewController
            if userIce.text!.isEmpty == false{
                scene1ViewController.user.favIce=userIce.text
            }
            if userDessert.text!.isEmpty == false{
                scene1ViewController.user.favDessert=userDessert.text
            }
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        userIce.delegate = self
        userDessert.delegate = self
    }
    


}
