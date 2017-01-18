//
//  TwitterTableViewController.swift
//  TwitterSearch
//
//  Created by Robert Deans on 1/17/17.
//  Copyright © 2017 Robert Deans. All rights reserved.
//

import UIKit
import TwitterKit

class TwitterTableViewController: UITableViewController {

    @IBOutlet var twitterTableView: UITableView!
    
    lazy var searchBarController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: Base this Tweet ID on some data from elsewhere in your app
        TWTRAPIClient().loadTweet(withID: "631879971628183552") { (tweet, error) in

            print("TWEET = \(tweet?.text)")
            
//            if let tweetView = TWTRTweetView(tweet: tweet) {
//                tweetView.center = CGPoint(x: self.view.center.x, y: self.topLayoutGuide.length + tweetView.frame.size.height / 2);
//                self.view.addSubview(tweetView)
//            } else {
//                NSLog("Tweet load error: %@", error!.localizedDescription)
//            }
        }

        
        APIClient.getTwitterData { (twitterDictionary) in
            print("TWITTER NAME IS ")
        }
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func configure() {
        twitterTableView.delegate = self
        twitterTableView.dataSource = self
        
        //call on twitter api; multithread; reload tableview
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


}

extension TwitterTableViewController: UISearchBarDelegate, UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
}
