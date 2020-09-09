//
//  ViewController.swift
//  lab1
//
//  Created by Kareena Arora on 9/7/20.
//  Copyright © 2020 Kareena Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageText: UILabel!
    
    @IBAction func buttonPress(_ sender: UIButton) {
        messageText.text = "I like sunflowers and sunsets!"
    }
 
    @IBOutlet weak var images: UIImageView!
    
    @IBAction func choosePicture(_ sender: UIButton) {
        if sender.tag == 1{
            images.image = UIImage(named: "Sunflower")
        }
        else if sender.tag == 2{
            images.image = UIImage(named: "Sunset")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

