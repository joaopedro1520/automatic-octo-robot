//
//  NetworkManager.swift
//  lastfm
//
//  Created by Joao Bastos on 13/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation
import RxSwift

class NetworkManager: NetworkCaller {
    
    // MARK: - Variables
    private let disposeBag = DisposeBag()
    
    static func getAlbumsByTag(tag: String, page: String) -> Observable<Results> {
        
        let dict = ["method":"tag.gettopalbums","tag": tag,"page":page,
                    "api_key": StorageKeys.apiKey, "format": "json"]
        
        return requestJSON(EndPointResolver.getTopAlbums( params: dict))
        
    }
    
    //?method=album.getinfo&artist=Cher&album=Believe
    static func getAlbumDetail(artist: String, album: String) -> Observable<AlbumDetail>{
        let dict = ["method":"album.getinfo","artist":artist,
                    "album": album,"api_key": StorageKeys.apiKey, "format": "json"]
        return requestJSON(EndPointResolver.getAlbumDetail(params: dict))
    }
    
    //?method=artist.getinfo&artist=Cher
    static func getArtistDetail(artist: String) -> Observable<ArtistDetail>{
        let dict = ["method":"artist.getinfo","artist":artist,
                    "api_key": StorageKeys.apiKey, "format": "json"]
        return requestJSON(EndPointResolver.getArtistDetail(params: dict))
    }
    
    static func downloadImage(url: String) -> Observable<Data>{
        return requestImage(URLRequest(url: URL(string: url)!))
        
    }
    
}
