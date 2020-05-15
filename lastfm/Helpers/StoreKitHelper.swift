//
//  StoreKitHelper.swift
//  lastfm
//
//  Created by Joao Bastos on 12/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation
import StoreKit

struct StoreKitHelper {
    
    static func shouldShowDialog(){
        let defaults = UserDefaults.standard
        
        let count: Int = defaults.integer(forKey: StorageKeys.appLaunchCount)
           let number = count + 1
            print("app launch count: " + number.description)
        
            if number >= 10 {
                SKStoreReviewController.requestReview()
                StorageData.removeObject(keyObject: StorageKeys.appLaunchCount)
            }else{
                StorageData.setObject(value: number as AnyObject, key: StorageKeys.appLaunchCount)
            }
    }
    
}
