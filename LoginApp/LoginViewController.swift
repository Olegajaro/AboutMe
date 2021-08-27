//
//  ViewController.swift
//  LoginApp
//
//  Created by Олег Федоров on 24.08.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    //MARK: - IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Private properties
    private let user = "Kenny"
    private let password = "Qwerty"
    
    // MARK: - Navigation
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.delegate = self
        passwordTF.delegate = self
        
        passwordTF.returnKeyType = .done
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
        
        super .touchesBegan(touches, with: event)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        
        welcomeVC.user = user
    }
    
    // MARK: - IBActions
    @IBAction func loginButtonPressed() {
        view.endEditing(true)
        
        if userNameTF.text == user && passwordTF.text == password {
            performSegue(withIdentifier: "goToWelcomeView", sender: nil)
        } else {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Oops!", and: "Your Name is \(user) ✌🏻")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Oops!", and: "Your Password is \(password) ✌🏻")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        
        passwordTF.text = ""
        userNameTF.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            textField.resignFirstResponder()
            passwordTF.becomeFirstResponder()
        }
        
        if textField == passwordTF && passwordTF.text == "Qwerty" {
            loginButtonPressed()
        }
        
        return true
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

