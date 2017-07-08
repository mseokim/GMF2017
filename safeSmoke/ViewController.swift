//
//  ViewController.swift
//  safeSmoke
//
//  Created by 김민서 on 2017. 7. 9..
//  Copyright © 2017년 minseo. All rights reserved.
//

import UIKit
import FBSDKShareKit
import FBSDKLoginKit
import FBSDKCoreKit

class ViewController: UIViewController {
    @IBOutlet weak var btnFB: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnSingUp: UIButton!
    
    @IBOutlet weak var imgViewTitle: UIImageView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var txtFieldPwd: UITextField!
    
    @IBAction func loginFacebook(_ sender: UIButton) {
        let fbLoginManager = FBSDKLoginManager()
        fbLoginManager.logIn(withReadPermissions: ["public_profile", "email", "user_friends"], from: self) {
            (result, error) in
            if (error == nil) {
                let fbloginresult : FBSDKLoginManagerLoginResult = result!
                if(fbloginresult.grantedPermissions.contains("email"))
                {
                    self.getFBUserData()
                }
            }
    }
        
    }
        func getFBUserData() {
            if((FBSDKAccessToken.current()) != nil) {
                FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "id, name, first_name, last_name, picture.type(large), email"]).start(completionHandler: { (connection, result, error) -> Void in if (error == nil) {
                        print(result ?? 0)
                        self.performSegue(withIdentifier: "ToSettings", sender: self)
                    }
        })
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgView.image = UIImage(named: "background.png")
        imgViewTitle.image = UIImage(named: "title.png")
        
        txtFieldPwd.placeholder = "비밀번호"
        txtFieldEmail.placeholder = "E-mail"
        
        txtFieldEmail.keyboardType = .URL
        txtFieldPwd.keyboardType = .asciiCapable
        btnFB.layer.borderColor = UIColor.white.cgColor
        btnFB.layer.borderWidth = 1
        btnFB.layer.cornerRadius = 25.0
        
        btnLogin.layer.borderColor = UIColor.white.cgColor
        btnLogin.layer.borderWidth = 1
        btnLogin.layer.cornerRadius = 25.0
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func txtFieldEmail(_ sender: Any) {
        txtFieldEmail.resignFirstResponder()
    }

    @IBAction func txtFieldPwd(_ sender: Any) {
        txtFieldPwd.resignFirstResponder()
    }

}

