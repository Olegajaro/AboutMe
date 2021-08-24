//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Олег Федоров on 24.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        helloLabel.text = "\u{270c}"
    }

}
