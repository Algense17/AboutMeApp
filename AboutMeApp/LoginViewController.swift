//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Vasiliy on 09.02.2025.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet private var userNameTextField: UITextField!
    @IBOutlet private var passwordTextField: UITextField!
    
    private let currentLogin = "1"
    private let currentPassword = "1"
        
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
                andMessage: "Please, enter correct you login and password",
                clearPassword: true
            )
            
            return false
        }
        return true
    }

    
    @IBAction private func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction private func forgotUserButtonAction() {
        showAlert(
            withTitle: "Whooops",
            andMessage: "Your name is \(currentLogin)",
            clearPassword: false
        )
    }
    
    @IBAction private func forgotPassButtonAction() {
        showAlert(
            withTitle: "Whooops",
            andMessage: "Your password is \(currentPassword)",
            clearPassword: false
        )
    }
    
    private func showAlert(withTitle title: String, andMessage message: String, clearPassword: Bool) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) {_ in
            if clearPassword {
                self.passwordTextField.text = "" }
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}

