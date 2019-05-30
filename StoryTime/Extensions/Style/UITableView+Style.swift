//
//  UITableView+Style.swift
//  StoryTime
//
//  Created by Bizet Rodriguez-Velez on 5/30/19.
//  Copyright © 2019 Bizet Rodriguez-Velez. All rights reserved.
//

import UIKit

extension UITableView {
    
    func stylizeTableView(backgroundColor: String = "#3F5671", rowHeight: CGFloat = CGFloat(80)) {
        self.backgroundColor = UIColor().hexStringToUIColor(hex: backgroundColor)
        self.separatorStyle = .none
        self.rowHeight = rowHeight
    }
}
