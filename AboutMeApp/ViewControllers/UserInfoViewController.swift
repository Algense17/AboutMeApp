//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Vasiliy on 11.02.2025.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet private var photoImage: UIImageView!
    
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var surnameLabel: UILabel!
    @IBOutlet private var companyLabel: UILabel!
    @IBOutlet private var departmentLabel: UILabel!
    @IBOutlet private var positionLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImage.layer.cornerRadius = photoImage.frame.height / 2
        photoImage.image = UIImage(named: user.person.photo)
        
        self.navigationItem.title = user.getFullName
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        companyLabel.text = user.person.jobInfo.company
        departmentLabel.text = user.person.jobInfo.department
        positionLabel.text = user.person.jobInfo.position

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingVC = segue.destination as? UserBioViewController {
            settingVC.user = user
        }
    }


}
