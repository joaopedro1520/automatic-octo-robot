//
//  Album.swift
//  lastfm
//
//  Created by Joao Bastos on 12/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation

struct Results: Codable, Equatable {
    let albums: Albums
}

struct AlbumDetail: Codable, Equatable {
    let album: Album
}

struct Albums: Codable, Equatable {
    let album: [Album]
    let attr: AlbumsAttr
    
    enum CodingKeys: String, CodingKey {
        case album
        case attr = "@attr"
    }
}

// MARK: - AlbumsAttr
struct AlbumsAttr: Codable, Equatable {
    let tag, page, perPage, totalPages: String?
    let total: String?
}


// MARK: - Album
struct Album: Codable, Equatable {
    
    let name, mbid: String?
    let url: String?
    let artist: Artist?
    let image: [Image]?
    let listeners, playcount: String?
    let tracks: Tracks?
    let tags: Tags?
    let wiki: Wiki?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try? container.decode(String.self, forKey: .name)
        mbid = try? container.decode(String.self, forKey: .mbid)
        url = try? container.decode(String.self, forKey: .url)
        if let value = try? container.decode(Artist.self, forKey: .artist) {
            artist = value
        } else {
            let name = try? container.decode(String.self, forKey: .artist)
            artist = Artist(name: name, mbid: nil, url: nil, stats: nil)
        }
        image = try? container.decode(Array.self, forKey: .image)
        listeners = try? container.decode(String.self, forKey: .listeners)
        playcount = try? container.decode(String.self, forKey: .playcount)
        tracks = try? container.decode(Tracks.self, forKey: .tracks)
        tags = try? container.decode(Tags.self, forKey: .tags)
        wiki = try? container.decode(Wiki.self, forKey: .wiki)
        
    }
    
}
