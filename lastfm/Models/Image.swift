//
//  Image.swift
//  lastfm
//
//  Created by Joao Bastos on 12/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation

struct Image: Codable, Equatable {
    let text: String
    let size: Size
    
    enum CodingKeys: String, CodingKey {
        case text = "#text"
        case size
    }
}

enum Size: String, Codable, Equatable {
    case extralarge = "extralarge"
    case large = "large"
    case medium = "medium"
    case small = "small"
}
