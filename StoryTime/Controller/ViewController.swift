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
    let borderColor = "#63D6B4"
    let buttonBackgroundColor = "#63D6B4"
    let placeHolderTextColor = "#459488"
    let textColor = "#63D6B4"
    
    let viewBackgroundColor = "#3F5671"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor().hexStringToUIColor(hex: viewBackgroundColor)
        
        nameTextField.layer.borderColor = UIColor().hexStringToUIColor(hex: borderColor).cgColor
        nameTextField.layer.borderWidth = 2.0
        nameTextField.layer.cornerRadius = 15.0
        nameTextField.backgroundColor = .clear
        nameTextField.attributedPlaceholder = NSAttributedString(
            string: "Name",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor().hexStringToUIColor(hex: placeHolderTextColor)]
        )
        nameTextField.textColor = UIColor().hexStringToUIColor(hex: textColor)
        
        //        nameTextField
        
        ageTextField.layer.borderColor = UIColor().hexStringToUIColor(hex: borderColor).cgColor
        ageTextField.layer.borderWidth = 2.0
        ageTextField.layer.cornerRadius = 15.0
        ageTextField.backgroundColor = .clear
        ageTextField.attributedPlaceholder = NSAttributedString(
            string: "Age",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor().hexStringToUIColor(hex: placeHolderTextColor)]
        )
        ageTextField.textColor = UIColor().hexStringToUIColor(hex: textColor)
        
        startButton.backgroundColor = UIColor().hexStringToUIColor(hex: buttonBackgroundColor)
        startButton.layer.cornerRadius = 15.0
        startButton.setTitleColor(UIColor().hexStringToUIColor(hex: viewBackgroundColor), for: .normal)
    }
    
    // MARK: Private IBActions
    @IBAction private func pressedPlay(_ sender: UIButton) {
        
        guard let name = nameTextField.text, let age = ageTextField.text else { return }
        
        if name.isEmpty || age.isEmpty {
            return
        }
        
        performSegue(withIdentifier: "goToExperienceSelection", sender: nil)
        
    }
    
}

