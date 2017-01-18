//
//  TwitterTableViewController.swift
//  TwitterSearch
//
//  Created by Robert Deans on 1/17/17.
//  Copyright © 2017 Robert Deans. All rights reserved.
//

import UIKit
import TwitterKit

class TwitterTableViewController: TWTRTimelineViewController, UISearchBarDelegate {

    lazy var searchBar = UISearchBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        searchBar.delegate = self
        navigationItem.titleView = searchBar
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if searchBar.text != "" {
            let name = searchBar.text!
            let client = TWTRAPIClient()
            self.dataSource = TWTRUserTimelineDataSource(screenName: name, apiClient: client)
        }
    }
}
