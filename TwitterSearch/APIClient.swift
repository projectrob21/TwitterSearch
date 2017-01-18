//
//  APIClient.swift
//  TwitterSearch
//
//  Created by Robert Deans on 1/17/17.
//  Copyright © 2017 Robert Deans. All rights reserved.
//

import Foundation
import TwitterKit

class APIClient {
    
    class func getTwitterData(completion: @escaping ([String:Any]) -> Void) {
       
        // api client is a couple weeks outdated :/
        
        guard let url = URL(string: "https://api.twitter.com/1.1/statuses/user_timeline.json?oauth_consumer_key=mhMSvHsLgdmVe7UxVY3abssFw&oauth_token=3351338813-GBcOFZKDLgsfJTQpdRQmj5a5HIEEj2EnJpgj00h&oauth_signature_method=HMAC-SHA1&oauth_timestamp=1483483262&oauth_nonce=clgEx1&oauth_version=1.0&oauth_signature=/grGFic9e+acxbUZ85q3iJkZIfE=&screen_name=realtrumpatine") else { print("trouble unwrapping url"); return }
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url) { (data, response, error) in
            guard let unwrappedData = data else { print("error unwrapping data"); return }
            do {
                let responseJSON = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as! [String:Any]
                completion(responseJSON)
            } catch {
                print("ERROR: \(error)")
            }
        }
        dataTask.resume()
        
    }
    
    
    
    
}
