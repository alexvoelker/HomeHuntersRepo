//
//  AppDelegate.swift
//  HomeHunters
//
//  Created by Alex Voelker on 4/21/18.
//  Copyright © 2018 Diamond__Spider. All rights reserved.
//

import UIKit
import GoogleMaps

let googleApiKey = "AIzaSyCPLSn30U2Azu2OSCiyc_TPHBYPuQQVaQU"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //2
        GMSServices.provideAPIKey(googleApiKey)
        return true
    }
}
