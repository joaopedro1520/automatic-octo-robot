//
//  StorageData.swift
//  lastfm
//
//  Created by Joao Bastos on 12/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation

struct StorageData{
    
    static func setObject(value: AnyObject ,key:String) {
        let pref = UserDefaults.standard
        pref.set(value, forKey: key)
        pref.synchronize()
    }
    
    static func removeObject(keyObject: String) {
        
        print("  🗑 : \(keyObject)")
        
        UserDefaults.standard.removeObject(forKey: keyObject)
        UserDefaults.standard.synchronize()
    }
}
