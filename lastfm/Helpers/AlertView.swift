//
//  AlertView.swift
//  lastfm
//
//  Created by Joao Bastos on 15/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func showAlert(title: String = "", message: String, action: UIAlertAction){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        alert.addAction(action)
        
        self.present(alert, animated: true)
    }
}
