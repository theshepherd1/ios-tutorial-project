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
    
//    override init(frame: CGRect) {
//        var path = UIBezierPath(ovalInRect: frame)
//        color.setFill()
//        path.fill()
//    }
//
//    required init(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func drawRect(rect: CGRect) {
        var path = UIBezierPath(ovalInRect: rect)
        color.setFill()
        path.fill()
        

    }
}


