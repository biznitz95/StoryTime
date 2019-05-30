//
//  UIView+Style.swift
//  StoryTime
//
//  Created by Bizet Rodriguez-Velez on 5/30/19.
//  Copyright © 2019 Bizet Rodriguez-Velez. All rights reserved.
//

import UIKit

extension UIView {
    
    func stylizeView(backgroundColor: String = "#3F5671") {
        self.backgroundColor = UIColor().hexStringToUIColor(hex: backgroundColor)
    }
}
