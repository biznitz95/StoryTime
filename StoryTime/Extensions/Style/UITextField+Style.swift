//
//  UITextField+Style.swift
//  StoryTime
//
//  Created by Bizet Rodriguez-Velez on 5/30/19.
//  Copyright © 2019 Bizet Rodriguez-Velez. All rights reserved.
//

import UIKit

extension UITextField {
    
    func stylizeTextField(placeholderText: String,
                 placeHolderTextColor: String = "#459488",
                 textColor: String = "#63D6B4",
                 borderColor: String = "#63D6B4",
                 borderWidth: CGFloat = 2.0,
                 corderRadius: CGFloat = 15.0
                 ) {
        self.layer.borderColor = UIColor().hexStringToUIColor(hex: borderColor).cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = corderRadius
        self.backgroundColor = .clear
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,
                                                        attributes: [NSAttributedString.Key.foregroundColor: UIColor().hexStringToUIColor(hex: placeHolderTextColor)]
        )
        self.textColor = UIColor().hexStringToUIColor(hex: textColor)
    }
}
