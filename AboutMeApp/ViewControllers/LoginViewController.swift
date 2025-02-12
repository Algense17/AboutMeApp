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
    
    var user = User.getUser()
    
    private let currentLogin = "User"
    private let currentPassword = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.text = user.login
        passwordTextField.text = user.password

    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tabbarVC = segue.destination as? UITabBarController {
            tabbarVC.viewControllers?.forEach { viewController in
                if let welcomeVC = viewController as? WelcomeViewController {
                    welcomeVC.user = user
                } else if let navigationVC = viewController as? UINavigationController {
                    if let userInfoVC = navigationVC.viewControllers.first as? UserInfoViewController {
                        userInfoVC.user = user
                    }
                }
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == currentLogin, passwordTextField.text == currentPassword else {
            showAlert(
                withTitle: "invalid login or password",
                andMessage: "Please, enter correct you login and password") {
                    self.passwordTextField.text = ""
                }
            
            return false
        }
        return true
    }

    @IBAction private func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgotDataButtonsAction(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Whoops", andMessage: "Your login is \(currentLogin)")
        : showAlert(withTitle: "Whoops", andMessage: "Your password is \(currentPassword)")
    }
    
    private func showAlert(withTitle title: String, andMessage message: String, handler: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) {_ in 
            handler?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}

