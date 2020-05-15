//
//  Track.swift
//  lastfm
//
//  Created by Joao Bastos on 13/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation

// MARK: - Tracks
struct Tracks: Codable, Equatable {
    let track: [Track]?
}

// MARK: - Track
struct Track: Codable, Equatable {
    let name: String?
    let url: String?
    let duration: String?
    let attr: Attr?
    let streamable: Streamable?
    let artist: Artist?
    
    enum CodingKeys: String, CodingKey {
        case name, url, duration
        case attr = "@attr"
        case streamable, artist
    }
}

// MARK: - Attr
struct Attr: Codable, Equatable {
    let rank: String?
}

// MARK: - Streamable
struct Streamable: Codable, Equatable {
    let text, fulltrack: String?
    
    enum CodingKeys: String, CodingKey {
        case text = "#text"
        case fulltrack
    }
}

// MARK: - Wiki
struct Wiki: Codable, Equatable {
    let published, summary, content: String?
}
