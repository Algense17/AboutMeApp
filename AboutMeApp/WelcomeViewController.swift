//
//  LoginSuccessViewController.swift
//  AboutMeApp
//
//  Created by Vasiliy on 09.02.2025.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var username: String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Wellcome \(username ?? "")"
    }
    

    @IBAction func logoutButtonAction() {
        dismiss(animated: true)
    }
    
}
