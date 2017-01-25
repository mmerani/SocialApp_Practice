//
//  ViewController.swift
//  SocialApp_Practice
//
//  Created by Michael Merani on 1/24/17.
//  Copyright © 2017 Michael Merani. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookBtnTapped(_ sender: AnyObject) {
        let facebookLogin = FBSDKLoginManager()
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("MIKE: Unable to authenticate with Facebook")
            } else if result?.isCancelled == true {
                print("MIKE: User canceled Facebook authentication")
            } else {
                print("MIKE: Authenticated")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential)
            }
        }
    }
    
    func firebaseAuth(_ credential: FIRAuthCredential){
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("MIKE: Unable to authenticate")
            } else {
                print("MIKE: Successful authentication")
            }
        })
    }

}

