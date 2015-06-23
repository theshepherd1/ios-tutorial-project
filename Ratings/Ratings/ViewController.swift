//
//  ViewController.swift
//  Ratings
//
//  Created by Tony Mu on 6/19/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTapped(sender:UIButton) {
        if(sender.titleLabel == "X") {
            sender.setTitle("A very long label for this title hahaha", forState: .Normal)
        } else {
            
        }
    }


}

