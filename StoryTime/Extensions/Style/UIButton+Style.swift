//
//  UIButton+Style.swift
//  StoryTime
//
//  Created by Bizet Rodriguez-Velez on 5/30/19.
//  Copyright © 2019 Bizet Rodriguez-Velez. All rights reserved.
//

import UIKit

extension UIButton {
    
    func stylizeButton(backgroundColor: String = "#63D6B4",
                 titleColor: String = "#3F5671",
                 cornerRadius: CGFloat = 15.0) {
        self.backgroundColor = UIColor().hexStringToUIColor(hex: backgroundColor)
        self.layer.cornerRadius = cornerRadius
        self.setTitleColor(UIColor().hexStringToUIColor(hex: titleColor), for: .normal)
    }
}
