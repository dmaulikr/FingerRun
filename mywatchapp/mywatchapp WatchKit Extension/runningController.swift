//
//  runningController.swift
//  mywatchapp
//
//  Created by Yishi Xie on 11/24/16.
//  Copyright © 2016 Yishi Xie. All rights reserved.
//

import WatchKit
import Foundation


class runningController: WKInterfaceController {
    
    @IBOutlet var watchTimer: WKInterfaceTimer!
    
    var date1  = NSDate()
    var date2 = NSDate()
    var dateAsString = String("00:00")
//    var dateAsString:String = "00:00"
    
    @IBAction func finishButton() {
        //success haptic effect
        WKInterfaceDevice.current().play(.success)
        
        
//         pushController(withName: "scoreController", context: dateAsString)
        
        
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        watchTimer.start()
        
         date1 = NSDate()
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        WKInterfaceDevice.current().play(.failure)
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        //return self.dateAsString
        watchTimer.stop()
        
        //pass data once button was clicked
        date2 = NSDate()
        
        let interval = date2.timeIntervalSince(date1 as Date)
        
//         let dateFormat = DateFormatter()
//         dateFormat.dateFormat = "mm:ss"
        // let dateString = dateFormat.string(from: interval);
        let dateAsString = DateComponentsFormatter().string(from:interval)!
        
        print("time",dateAsString);
        
        return dateAsString
        
    }
}
