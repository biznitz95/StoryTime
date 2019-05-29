//
//  ViewController.swift
//  StoryTime
//
//  Created by Bizet Rodriguez-Velez on 5/28/19.
//  Copyright © 2019 Bizet Rodriguez-Velez. All rights reserved.
//

import UIKit

class ViewController: MainView {

    // MARK: IBOutlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: Private IBActions
    @IBAction private func pressedPlay(_ sender: UIButton) {
        
        guard let name = nameTextField.text, let age = ageTextField.text else { return }
        
        if name.isEmpty || age.isEmpty {
            return
        }
        
        
        
        performSegue(withIdentifier: "goToVideo", sender: nil)
        
    }
    
}

