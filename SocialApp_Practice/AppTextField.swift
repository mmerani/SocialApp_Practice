//
//  AppTextField.swift
//  SocialApp_Practice
//
//  Created by Michael Merani on 1/25/17.
//  Copyright © 2017 Michael Merani. All rights reserved.
//

import UIKit

class AppTextField: UITextField {

    override func awakeFromNib() {
        layer.borderColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.2).cgColor
        layer.borderWidth = 1.0
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }

}
