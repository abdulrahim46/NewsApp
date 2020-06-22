//
//  cardCell.swift
//  NewsApp
//
//  Created by Abdul chaudhary on 22/06/20.
//  Copyright © 2020 Abdul chaudhary. All rights reserved.
//

import UIKit

class cardCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var headLineLabel: UILabel!

    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var dateLabel: UILabel!
    
    
    @IBOutlet weak var cardView: UIView!
    
    
    func configure(){
        
        cardView.layer.shadowColor = UIColor.gray.cgColor
        cardView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        cardView.layer.shadowOpacity = 1.0
        cardView.layer.masksToBounds = false
        cardView.layer.cornerRadius = 10.0
        
        
    }
    
    
    
    
}
