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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        label.stylizeLabelForCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
