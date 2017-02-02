//
//  FeedVC.swift
//  SocialApp_Practice
//
//  Created by Michael Merani on 1/29/17.
//  Copyright © 2017 Michael Merani. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class FeedVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signOutTapped(_ sender: AnyObject) {
        let keychainResult = KeychainWrapper.defaultKeychainWrapper.remove(key: KEY_UID)
        try! FIRAuth.auth()?.signOut()
        performSegue(withIdentifier: "goToSignIn", sender: nil)
    }
    

}
