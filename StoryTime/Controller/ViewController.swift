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
    @IBOutlet weak var startButton: UIButton!
    
    // MARK: Private constants
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stylize()
    }
    
    // MARK: Private IBActions
    @IBAction private func pressedPlay(_ sender: UIButton) {
        
        guard let name = nameTextField.text, let age = ageTextField.text else { return }
        
        let allowedCharacters = CharacterSet(charactersIn:"+0123456789 ")
        guard allowedCharacters.isSuperset(of: CharacterSet(charactersIn: age)) else { return }
        
        if name.isEmpty || age.isEmpty {
            return
        }
        
        performSegue(withIdentifier: "goToExperienceSelection", sender: nil)
        
    }
    
    func stylize() {
        nameTextField.stylizeTextField(placeholderText: "Name")
        ageTextField.stylizeTextField(placeholderText: "Age")
        startButton.stylizeButton()
    }
    
}

