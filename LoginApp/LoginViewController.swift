//
//  ViewController.swift
//  LoginApp
//
//  Created by Олег Федоров on 24.08.2021.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Oops!", and: "Your Name is Kenny \u{1f44c}")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Oops!", and: "Your Password is Qwerty \u{1f44c}")
    }
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

