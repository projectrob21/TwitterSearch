//
//  FabricViewController.swift
//  TwitterSearch
//
//  Created by Robert Deans on 1/17/17.
//  Copyright © 2017 Robert Deans. All rights reserved.
//

import Foundation
import UIKit
import TwitterKit

class FabricViewController: TWTRTimelineViewController {
    
    @IBOutlet weak var tweetTableView: UITableView!
    
    override func viewDidLoad() {
        print("asdgsbRS")
        
            super.viewDidLoad()
            let client = TWTRAPIClient()
            self.dataSource = TWTRUserTimelineDataSource(screenName: "Potus", apiClient: client)
       
        
        print("asdgsbRS")
    }
    
    
}
