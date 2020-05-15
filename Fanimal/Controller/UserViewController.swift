//
//  UserViewController.swift
//  Fanimal
//
//  Created by Ariel Theodore W on 12/05/20.
//  Copyright © 2020 ariltw. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    func loadData() {
        let data: User = mock_user[0]
        imgProfile.image = UIImage(named: data.image)
        imgProfile.layer.masksToBounds = true
        imgProfile.layer.cornerRadius = imgProfile.bounds.width / 2
        imgProfile.layer.borderWidth = 3
        lblName.text = data.name
        lblEmail.text = data.email
    }
}
