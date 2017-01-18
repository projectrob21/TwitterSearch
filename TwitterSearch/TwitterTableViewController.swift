//
//  TwitterTableViewController.swift
//  TwitterSearch
//
//  Created by Robert Deans on 1/17/17.
//  Copyright © 2017 Robert Deans. All rights reserved.
//

import UIKit
import TwitterKit

class TwitterTableViewController: TWTRTimelineViewController {
    
    
    lazy var searchBarController = UISearchController()
    
//    func findusertweets() {
//        
//        var searchtext = /*searchBarController.searchBar.text!*/ "potus"
//        let client = TWTRAPIClient()
//        let dataSource = TWTRUserTimelineDataSource(screenName: searchtext, apiClient: client)
//    
//        print("dataSource = \(dataSource.userID)")
//
//        let userID = dataSource.userID
//        
//        
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        var userID: String?
        
        let client = TWTRAPIClient()
        self.dataSource = TWTRUserTimelineDataSource(screenName: "Potus", apiClient: client)
        
        
        // TODO: Base this Tweet ID on some data from elsewhere in your app
//        TWTRAPIClient().loadTweet(withID: "631879971628183552") { (tweet, error) in
//            
//            print("TWEET = \(tweet?.text)")
//            
//            userID = tweet?.author.userID
//            
//            
//            TWTRAPIClient().loadUser(withID: userID!) { (user, error) in
//                print(user?.name)
//                print(user?.isVerified)
//                print(user?.userID)
//            }
        
            
            
            //            if let tweetView = TWTRTweetView(tweet: tweet) {
            //                tweetView.center = CGPoint(x: self.view.center.x, y: self.topLayoutGuide.length + tweetView.frame.size.height / 2);
            //                self.view.addSubview(tweetView)
            //            } else {
            //                NSLog("Tweet load error: %@", error!.localizedDescription)
            //            }
//        }
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func configure() {
        
        //call on twitter api; multithread; reload tableview
        
    }
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    // MARK: - Table view data source
//    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    
}
