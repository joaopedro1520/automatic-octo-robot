//
//  Artist.swift
//  lastfm
//
//  Created by Joao Bastos on 13/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation

struct ArtistDetail: Codable, Equatable {
    let artist: Artist?
}

struct Artist: Codable, Equatable {
    let name, mbid: String?
    let url: String?
    let stats: Stats?
}

// MARK: - Stats
struct Stats: Codable, Equatable {
    let listeners, playcount: String?
}
