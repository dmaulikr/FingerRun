//
//  InterfaceController.swift
//  mywatchapp WatchKit Extension
//
//  Created by Yishi Xie on 11/20/16.
//  Copyright © 2016 Yishi Xie. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

//    @IBAction func start() {
//        WKInterfaceDevice.current().play(.click)
//    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        WKInterfaceDevice.current().play(.start)
    }

}
