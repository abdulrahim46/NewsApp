//
//  ViewController.swift
//  NewsApp
//
//  Created by Abdul chaudhary on 22/06/20.
//  Copyright © 2020 Abdul chaudhary. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var newsTableView: UITableView!
    
    
       let pictures: [UIImage] = [UIImage(named: "img1.jpg")!, UIImage(named: "img1.jpg")!, UIImage(named: "img1.jpg")!]
       let titles: [String] = ["Beach Paradise", "Mountain Resort", "Desert Wasteland"]
       let descriptions: [String] = ["A beautiful beach paradise for the entire family.", "Stunning mountain view in the rockies.", "A desolate wasteland of nothing but sand."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newsTableView.isHidden = false
    }
    
    /// How many rows in the tableview?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    /// Defines what cells are being used
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! cardCell
        cell.configure()
       // cell.configure(picture: pictures[indexPath.row], title: titles[indexPath.row], description: descriptions[indexPath.row])
        
        return cell
    }
    
    
}



