//
//  BackEndAPIManajer.swift
//  TaskManajer
//
//  Created by Loquat Solutions on 20/6/17.
//  Copyright © 2017 MHP. All rights reserved.
//
import Foundation
import Alamofire


import Alamofire

class BackendAPIManager: NSObject {
    static let sharedInstance = BackendAPIManager()
    
    var alamoFireManager : Alamofire.SessionManager!
    
    var backgroundCompletionHandler: (() -> Void)? {
        get {
            return alamoFireManager?.backgroundCompletionHandler
        }
        set {
            alamoFireManager?.backgroundCompletionHandler = newValue
        }
    }
    
    fileprivate override init()
    {
        let configuration = URLSessionConfiguration.background(withIdentifier: "com.url.background")
        configuration.timeoutIntervalForRequest = 200 // seconds
        configuration.timeoutIntervalForResource = 200
        self.alamoFireManager = Alamofire.SessionManager(configuration: configuration)
    }
}
