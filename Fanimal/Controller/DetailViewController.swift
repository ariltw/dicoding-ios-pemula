//
//  DetailViewController.swift
//  Fanimal
//
//  Created by Ariel Theodore W on 12/05/20.
//  Copyright © 2020 ariltw. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imgBanner: UIImageView!
    @IBOutlet weak var lblType: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    
    @IBOutlet weak var imgStar1: UIImageView!
    @IBOutlet weak var imgStar2: UIImageView!
    @IBOutlet weak var imgStar3: UIImageView!
    @IBOutlet weak var imgStar4: UIImageView!
    @IBOutlet weak var imgStar5: UIImageView!
    
    @IBOutlet weak var lblSpeed: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    var data = mock_animal[0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    func loadData() {
        navigationItem.title = data.name
        imgBanner.image = UIImage(named: data.image)
        lblType.text = data.type.name
        lblLocation.text = data.location
        lblSpeed.text = "(\(data.speed)mph)"
        lblDescription.text = data.description
        
        let starCollection = [imgStar1, imgStar2, imgStar3, imgStar4, imgStar5]
        let var1 = data.speed
        let var2 = 4
        let var3 = 242
        let ratio = (Int(Double(Double(var1 - var2) / Double(var3 - var2) * Double(10) / Double(2)).rounded()) + 1)
        
        for position in 0...ratio {
            starCollection[position]?.image = UIImage(systemName: "star.fill")
        }
    }
    
    
}
