//
//  ViewController.swift
//  Schedule
//
//  Created by Khanh T Pham on 11/6/16.
//  Copyright © 2016 Khanh T Pham. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    var rootView: RCTRootView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let jsCodeLocation = NSURL(string: "http://localhost:8081/index.ios.bundle?platform=ios") as URL!
        
        self.rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "Schedule",
            initialProperties:nil,
            launchOptions: nil
            
        )
        
        let view  = (
            x: self.view.bounds.origin.x,
            y: self.view.bounds.origin.y,
            width: self.view.bounds.width,
            height: self.view.bounds.height
        )
        
        rootView.frame = CGRect(x: view.x, y: view.y, width: view.width, height: view.height)
        
        
        self.view.addSubview(rootView)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

