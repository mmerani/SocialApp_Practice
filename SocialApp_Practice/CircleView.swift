//
//  CircleView.swift
//  SocialApp_Practice
//
//  Created by Michael Merani on 2/2/17.
//  Copyright © 2017 Michael Merani. All rights reserved.
//

import UIKit

class CircleView: UIImageView {
    
    
    override func layoutSubviews() {
        layer.cornerRadius = self.frame.width / 2
    }

}
