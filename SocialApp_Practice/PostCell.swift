//
//  PostCell.swift
//  SocialApp_Practice
//
//  Created by Michael Merani on 2/2/17.
//  Copyright © 2017 Michael Merani. All rights reserved.
//

import UIKit


class PostCell: UITableViewCell {
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var usernameLbl: UILabel!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var caption: UITextView!
    @IBOutlet weak var likesLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    

}
