//
//  ViewController.swift
//  FirstApp
//
//  Created by venkata sudhakar on 08/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        welcome(message: "welcome to ios tutorials")
        // Do any additional setup after loading the view.
    }

    func welcome(message:String="") {
        messageLabel.text = message
    }
}

