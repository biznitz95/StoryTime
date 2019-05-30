//
//  CustomeTableViewCell.swift
//  StoryTime
//
//  Created by Bizet Rodriguez-Velez on 5/30/19.
//  Copyright © 2019 Bizet Rodriguez-Velez. All rights reserved.
//

import UIKit

class CustomeTableViewCell: UITableViewCell {
    
    // MARK: Private IBOutlets
    
    @IBOutlet weak var label: UILabel!
    
     let labelTextColor = "#63D6B4"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        label.layer.borderColor = UIColor.random().cgColor
        label.backgroundColor = .clear
        label.layer.borderWidth = 2.0;
        label.layer.cornerRadius = 15.0
        label.textColor = UIColor().hexStringToUIColor(hex: labelTextColor)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
