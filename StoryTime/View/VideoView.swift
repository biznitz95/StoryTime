//
//  ViewView.swift
//  StoryTime
//
//  Created by Bizet Rodriguez-Velez on 5/29/19.
//  Copyright © 2019 Bizet Rodriguez-Velez. All rights reserved.
//

import UIKit

class ViewView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Lock Device in horizontal mode
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }
    

}
