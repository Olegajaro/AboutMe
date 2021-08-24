//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Олег Федоров on 24.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var helloLabel: UILabel!
    @IBOutlet var welcomeTextLabel: UILabel!
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeTextLabel.text = welcomeText
        
        helloLabel.text = "\u{270c}"
    }

}
