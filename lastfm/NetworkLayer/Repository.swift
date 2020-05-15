//
//  Repository.swift
//  lastfm
//
//  Created by Joao Bastos on 13/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation
import RxSwift

class Repository: RepositoryProtocol {

    private let disposeBag = DisposeBag()
    static let shared: Repository = Repository()
    
    func getTopAlbums(tag: String, page: String) -> Observable<Results> {
        return NetworkManager.getAlbumsByTag(tag: tag, page: page)
    }
    
    func getAlbumDetail(artist: String, album: String) -> Observable<AlbumDetail> {
        return NetworkManager.getAlbumDetail(artist: artist, album: album)
    }
    
    func getArtistDetail(artist: String) -> Observable<ArtistDetail> {
        return NetworkManager.getArtistDetail(artist: artist)
    }
    
    func downloadImage(url: String) -> Observable<Data> {
        return NetworkManager.downloadImage(url: url)
    }

}
