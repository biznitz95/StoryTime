//
//  UILabel+Style.swift
//  StoryTime
//
//  Created by Bizet Rodriguez-Velez on 5/30/19.
//  Copyright © 2019 Bizet Rodriguez-Velez. All rights reserved.
//

import UIKit

extension UILabel {
    
    func stylizeLabel(labelTextColor: String = "#63D6B4"){
        self.textColor = UIColor().hexStringToUIColor(hex: labelTextColor)
    }
    
    func stylizeLabelForCell(labelTextColor: String = "#63D6B4",
                             borderWidth: CGFloat = 2.0,
                             cornerRadius: CGFloat = 15.0) {
        self.layer.borderColor = UIColor.random().cgColor
        self.backgroundColor = .clear
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
        self.textColor = UIColor().hexStringToUIColor(hex: labelTextColor)
    }
}
