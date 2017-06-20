//
//  NetworkManajer.swift
//  TaskManajer
//
//  Created by Loquat Solutions on 20/6/17.
//  Copyright © 2017 MHP. All rights reserved.
//

import Foundation
import Alamofire



class NetworkManager {
   
    private lazy var backgroundManager: Alamofire.SessionManager = {
    let bundleIdentifier = "bundleIdentifier"
    return Alamofire.SessionManager(configuration: URLSessionConfiguration.background(withIdentifier: bundleIdentifier + ".background"))
    }()
    
    
    var backgroundCompletionHandler: (() -> Void)? {
        get {
            return backgroundManager.backgroundCompletionHandler
        }
        set {
            backgroundManager.backgroundCompletionHandler = newValue
        }
    }    
}
