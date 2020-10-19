//
//  ViewController.swift
//  favs
//
//  Created by Kareena Arora on 10/18/20.
//  Copyright © 2020 Kareena Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
        
  
    @IBOutlet weak var dessertLabel: UILabel!
    @IBOutlet weak var iceLabel: UILabel!
 
    @IBAction func unwindSegue(_ segue:UIStoryboardSegue){
        iceLabel.text=user.favIce
        dessertLabel.text=user.favDessert
    }
    
    var user = Favorite()

    override func viewDidLoad() {
        super.viewDidLoad()
        iceLabel.layer.borderWidth = 0.5
        dessertLabel.layer.borderWidth = 0.5
        iceLabel.layer.cornerRadius = 4
        dessertLabel.layer.cornerRadius = 4
        
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

