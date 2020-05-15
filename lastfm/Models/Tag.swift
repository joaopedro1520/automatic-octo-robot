//
//  Tag.swift
//  lastfm
//
//  Created by Joao Bastos on 12/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation

// MARK: - Tags
struct Tags: Codable, Equatable {
    let tag: [Tag]?
}

// MARK: - Tag
struct Tag: Codable, Equatable {
    let name: String?
    let url: String?
}
