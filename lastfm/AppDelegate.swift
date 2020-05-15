//
//  AppDelegate.swift
//  lastfm
//
//  Created by Joao Bastos on 12/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        StoreKitHelper.shouldShowDialog()
        
        return true
    }
    
}

