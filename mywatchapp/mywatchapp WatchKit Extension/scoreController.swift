//
//  scoreController.swift
//  mywatchapp
//
//  Created by Yishi Xie on 12/6/16.
//  Copyright © 2016 Yishi Xie. All rights reserved.
//

import WatchKit
import Foundation


class scoreController: WKInterfaceController {
    //label element
    @IBOutlet var intervalLabel: WKInterfaceLabel!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        
        // Configure interface objects here.
        let data = context as? String
        self.intervalLabel.setText(data! + "s")
        
//http://www.informit.com/articles/article.aspx?p=2421568&seqNum=2
        
        
        print("context: ",context);
        
//        else{self.timeLabel.setText("00:18")
}
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        WKInterfaceDevice.current().play(.start)
    }
    
}
