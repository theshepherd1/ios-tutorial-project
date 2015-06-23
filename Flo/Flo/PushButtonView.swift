//
//  PushButtonView.swift
//  Flo
//
//  Created by Tony Mu on 6/15/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

import UIKit


@IBDesignable class PushButtonView: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    @IBInspectable var isAddButton: Bool = true
    @IBInspectable var lineFillColor: UIColor = UIColor.whiteColor()

    
    override func drawRect(rect: CGRect) {
        
        var path: UIBezierPath = UIBezierPath(ovalInRect: rect)
        lineFillColor.setFill()
        path.fill()
        
        let plusHeight: CGFloat = 3.0
        let plusWidth: CGFloat = bounds.height * 0.7
        
        var plusPath = UIBezierPath()
        
        plusPath.lineWidth = plusHeight
        
        plusPath.moveToPoint(CGPoint(x: bounds.width/2 - plusWidth/2, y: bounds.height/2))
        
        plusPath.addLineToPoint(CGPoint(x: bounds.width/2 + plusWidth/2, y: bounds.height/2))
        
        UIColor.whiteColor().setStroke()
        
        plusPath.stroke()
        
        if isAddButton {
        
        plusPath.moveToPoint(CGPoint(x: bounds.height/2, y: bounds.height/2 - plusWidth/2))
        
        plusPath.addLineToPoint(CGPoint(x: bounds.height/2, y: bounds.height/2 + plusWidth/2))
        
        plusPath.stroke()
        }
    }
}
