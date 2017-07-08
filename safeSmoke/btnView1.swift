//
//  btnView1.swift
//  safeSmoke
//
//  Created by 김민서 on 2017. 7. 9..
//  Copyright © 2017년 minseo. All rights reserved.
//

import UIKit

class btnView1: UIButton {

    class BorderedButton: UIButton {
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            layer.borderWidth = 1.0
            layer.borderColor = UIColor.black as! CGColor
            layer.cornerRadius = 5.0
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
