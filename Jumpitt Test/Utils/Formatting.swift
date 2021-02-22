//
//  Formatting.swift
//  Jumpitt Test
//
//  Created by Benjamin Andres Caceres Ramirez on 2/21/21.
//  Copyright © 2021 Benjamin Andres Caceres Ramirez. All rights reserved.
//

import UIKit

class FormattingUtils{
    
    func placeholderAttributes (textField: UITextField, placeholderText: String){
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00),
            NSAttributedString.Key.font : UIFont(name: "Prompt-SemiBold", size: 16)!
        ]

        textField.attributedPlaceholder = NSAttributedString(string: "\(placeholderText)", attributes: attributes)
    }
    
    func textFieldFormat(textField: UITextField){
        let spacerView = UIView(frame: CGRect(x: CGFloat(1), y: CGFloat(1), width: CGFloat(15), height: CGFloat(15)))
        textField.leftViewMode = .always
        textField.leftView = spacerView
    }
}
