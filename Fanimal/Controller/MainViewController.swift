//
//  ViewController.swift
//  Fanimal
//
//  Created by Ariel Theodore W on 12/05/20.
//  Copyright © 2020 ariltw. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var tblAnimal: UITableView!
    
    var data = mock_animal
    var selectedData: Animal = mock_animal[0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblAnimal.dataSource = self
        tblAnimal.delegate = self
        tblAnimal.register(UINib(nibName: "AnimalCell", bundle: nil), forCellReuseIdentifier: "AnimalCell")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let identifier = segue.identifier ?? ""
        switch identifier {
        case "detail":
            guard let vc = segue.destination as? DetailViewController else {
                return
            }
            vc.data = self.selectedData
        default:
            break
        }
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath) as! AnimalCell
        let starCollection = [cell.imgStar1, cell.imgStar2, cell.imgStar3, cell.imgStar4, cell.imgStar5]
        let var1 = data[indexPath.row]
        let var2 = var1.speed
        let var3 = 4
        let var4 = 242
        
        cell.imageAnimal.image = UIImage(named: var1.image)
        cell.labelName.text = var1.name
        cell.labelDescription.text = var1.description
        
        var ratio = (Int(Double(Double(var2 - var3) / Double(var4 - var3) * Double(10) / Double(2)).rounded()) + 1)
        ratio = ratio > 4 ? 4 : ratio
        
        for position in 0...ratio {
            starCollection[position]?.image = UIImage(systemName: "star.fill")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedData = data[indexPath.row]
        self.performSegue(withIdentifier: "detail", sender: tableView)
    }
}
