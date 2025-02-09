//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Vasiliy on 09.02.2025.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    
    private let currentLogin = "1"
    private let currentPassword = "1"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingVC = segue.destination as? WelcomeViewController
        settingVC?.username = userNameTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == currentLogin, passwordTextField.text == currentPassword else {
            showAlert(
                withTitle: "invalid login or password",
                andMessage: "Please, enter correct you login and password"
            )
            passwordTextField.text = ""
            return false
        }
        return true
    }

    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgotUserButtonAction() {
        showAlert(
            withTitle: "Whooops",
            andMessage: "Your name is user"
        )
    }
    
    @IBAction func forgotPassButtonAction() {
        showAlert(
            withTitle: "Whooops",
            andMessage: "Your password is secret"
        )
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}

