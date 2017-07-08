//
//  SignUpViewController.swift
//  safeSmoke
//
//  Created by 김민서 on 2017. 7. 9..
//  Copyright © 2017년 minseo. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var txtFieldPwd: UITextField!
    @IBOutlet weak var txtFieldPwdMore: UITextField!
    @IBOutlet weak var txtFieldAge: UITextField!
    @IBOutlet weak var btnMale: UIButton!
    @IBOutlet weak var btnFemale: UIButton!
    
    @IBOutlet weak var btnCmp: UIButton!
    
    
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.font = UIFont(name: "NanumBarunGothic.ttf", size: 17.0)
        // Do any additional setup after loading the view.
        txtFieldEmail.placeholder = "E-mail"
        txtFieldPwd.placeholder = "비밀번호"
        txtFieldPwdMore.placeholder = "비밀번호 확인"
        txtFieldAge.placeholder = "나이"
        
        btnMale.isEnabled = false
        btnFemale.isEnabled = true
        
        btnCmp.layer.borderColor = UIColor.white.cgColor
        btnCmp.layer.borderWidth = 1
        btnCmp.layer.cornerRadius = 25.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnMale(_ sender: Any) {
        
        btnFemale.isEnabled = true
        btnMale.isEnabled = false
    }
    
    @IBAction func btnFemale(_ sender: Any) {
        
        btnFemale.isEnabled = false
        btnMale.isEnabled = true
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
