//
//  PushButtonView.swift
//  Flo
//
//  Created by Tony Mu on 6/15/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

import UIKit

class PushButtonView: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    
    override func drawRect(rect: CGRect) {
        var path: UIBezierPath = UIBezierPath(ovalInRect: rect)
        UIColor.greenColor().setFill()
        path.fill()
    }
}
