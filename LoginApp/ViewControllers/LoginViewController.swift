//
//  ViewController.swift
//  LoginApp
//
//  Created by Олег Федоров on 24.08.2021.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: - IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Private properties
    private let user = User.getUserData()
    
    // MARK: - Navigation
    override func viewDidLoad() {
        super.viewDidLoad()

        passwordTF.returnKeyType = .done
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
    
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! AboutUserViewController
                aboutUserVC.user = user
            }
        }
    }
    
    // MARK: - IBActions
    @IBAction func loginButtonPressed() {
        if userNameTF.text != user.login || passwordTF.text != user.password {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Oops!", and: "Your Name is \(user.login) ✌🏻")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Oops!", and: "Your Password is \(user.password) ✌🏻")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        passwordTF.text = ""
        userNameTF.text = ""
    }
    
    
}

// MARK: - Private Methods
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            loginButtonPressed()
            performSegue(withIdentifier: "showWelcomeView", sender: nil)
        }
        return true
    }
}
