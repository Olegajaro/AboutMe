//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Олег Федоров on 24.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeTextLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeTextLabel.text = "Welcome, \(user.person.fullName)!"
    }

}
