//
//  AnimalCell.swift
//  Fanimal
//
//  Created by Ariel Theodore W on 12/05/20.
//  Copyright © 2020 ariltw. All rights reserved.
//

import UIKit

class AnimalCell: UITableViewCell {
    @IBOutlet weak var imageAnimal: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var imgStar1: UIImageView!
    @IBOutlet weak var imgStar2: UIImageView!
    @IBOutlet weak var imgStar3: UIImageView!
    @IBOutlet weak var imgStar4: UIImageView!
    @IBOutlet weak var imgStar5: UIImageView!
    
    var speed: Int = 1
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageAnimal.layer.cornerRadius = 8
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
