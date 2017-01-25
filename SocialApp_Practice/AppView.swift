//
//  AppView.swift
//  SocialApp_Practice
//
//  Created by Michael Merani on 1/25/17.
//  Copyright © 2017 Michael Merani. All rights reserved.
//

import UIKit

class AppView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0,height: 1.0)
        
    }

}
