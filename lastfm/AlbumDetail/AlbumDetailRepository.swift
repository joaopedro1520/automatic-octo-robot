//
//  AlbumDetailRepository.swift
//  lastfm
//
//  Created by Joao Bastos on 13/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation
import RxSwift

protocol AlbumDetailRepositoryProtocol {

    func getAlbumDetail(artist: String, album: String) -> Observable<AlbumDetail>
    func getArtistDetail(artist: String) -> Observable<ArtistDetail>
}

struct AlbumDetailRepository: AlbumDetailRepositoryProtocol {

    func getAlbumDetail(artist: String, album: String) -> Observable<AlbumDetail> {
        return Repository.shared.getAlbumDetail(artist: artist, album: album)
    }
    
    func getArtistDetail(artist: String) -> Observable<ArtistDetail> {
        return Repository.shared.getArtistDetail(artist: artist)
    }

}
