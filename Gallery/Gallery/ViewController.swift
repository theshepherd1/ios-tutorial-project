//
//  ViewController.swift
//  Gallery
//
//  Created by Tony Mu on 6/20/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var purple, yellow, green, pink, blue: UIColor!
    
//    @IBOutlet weak var firstView: BubbleView = BubbleView(frame:frame)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initColors()
        
    }
    
    @IBAction func addNewBubble(sender: UIButton) {
//        animVibrate(firstView)
        
        
        var frame = CGRectMake(0.0, 0.0, 54.0, 70.0)
        var dest = CGPointMake(50.0, 50.0)
        var firstView = UIButton(frame: frame)
        firstView.backgroundColor = UIColor.blackColor()
        
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(1.0)
        UIView.setAnimationCurve(UIViewAnimationCurve.EaseOut)
        
        firstView.frame.origin = dest
        
        
        UIView.commitAnimations()
        
        println("animated")

//        animSlide(firstView, destination: dest)
        
        
    }

    
    func animSlide(itemView: UIView, destination: CGPoint) {
        UIView.beginAnimations("animSlide", context: nil)
        UIView.setAnimationDuration(1.0)
        UIView.setAnimationCurve(UIViewAnimationCurve.EaseOut)
        
        itemView.frame.origin = destination
        
        
        UIView.commitAnimations()
        
        println("animated")
    }
//    
//    func animVibrate(itemView: UIView) {
//        var dist: CGFloat = 5.0
////        var rect = firstView.frame
////        var newRect = CGRectMake(rect.origin.x+30, rect.origin.y, rect.size.width, rect.size.height)
////        var view = BubbleView(frame: newRect)
//
//
//        
//        UIView.beginAnimations("vibrate", context: nil)
//
////        UIView.setAnimationRepeatAutoreverses(true)
////        UIView.setAnimationRepeatCount(4.0)
//        UIView.setAnimationDuration(5.0)
//        UIView.setAnimationCurve(UIViewAnimationCurve.EaseIn)
//        
//        self.view.addSubview(view)
//
//        UIView.commitAnimations()
//
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initColors() {
        purple = UIColor(red: 82.0/255.0, green: 72.0/255.0, blue: 254.0/255.0, alpha: 1.0)
        yellow = UIColor(red: 253.0/255.0, green: 255.0/255.0, blue: 113.0/255.0, alpha: 1.0)
        green = UIColor(red: 87.0/255.0, green: 255.0/255.0, blue: 42.0/255.0, alpha: 1.0)
        pink = UIColor(red: 255.0/255.0, green: 174.0/255.0, blue: 246.0/255.0, alpha: 1.0)
        blue = UIColor(red: 62.0/255.0, green: 255.0/255.0, blue: 248.0/255.0, alpha: 1.0)

    }



}

