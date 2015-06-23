//
//  BubleView.swift
//  Gallery
//
//  Created by Tony Mu on 6/22/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class BubbleView: UIButton {
    
    @IBInspectable var minRandom: Int = 0
    @IBInspectable var maxRandom: Int = 0
    @IBInspectable var color: UIColor = UIColor.greenColor()
    

    enum colors{
        
    }
    
    override func drawRect(rect: CGRect) {
        var path = UIBezierPath(ovalInRect: rect)
        color.setFill()
        path.fill()
    }
}


