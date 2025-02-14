//
//  UserBioViewController.swift
//  AboutMeApp
//
//  Created by Vasiliy on 12.02.2025.
//

import UIKit

final class UserBioViewController: UIViewController {
    
    @IBOutlet private var textVeiwLabel: UITextView!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textVeiwLabel.backgroundColor = .clear
        textVeiwLabel.text = user.person.bio
        title = "\(user.person.getFullName) Bio"

    }

}
