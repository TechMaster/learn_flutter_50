//
//  ViewController.swift
//  ChangeUI
//
//  Created by Techmaster on 2/27/20.
//  Copyright © 2020 Techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeText(_ sender: UIButton) {
        myLabel.text = "Hello Vietnam"
    }
}
