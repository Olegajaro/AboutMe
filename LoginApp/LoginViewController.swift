//
//  ViewController.swift
//  LoginApp
//
//  Created by Олег Федоров on 24.08.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        
        welcomeVC.welcomeText = "Welcome, \(userNameTF.text ?? "User")"
    }
    
    @IBAction func loginButtonPressed() {
        let userNameText = userNameTF.text ?? ""
        let passwordText = passwordTF.text ?? ""
        
        if userNameText == "Kenny" && passwordText == "Qwerty" {
            performSegue(withIdentifier: "goToWelcomeView", sender: nil)
        } else {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Oops!", and: "Your Name is Kenny \u{1f44c}")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Oops!", and: "Your Password is Qwerty \u{1f44c}")
    }
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {
            _ in self.passwordTF.text = ""
        }
            
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

