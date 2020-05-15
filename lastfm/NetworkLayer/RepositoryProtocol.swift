//
//  RepositoryProtocol.swift
//  lastfm
//
//  Created by Joao Bastos on 13/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation
import RxSwift

protocol RepositoryProtocol {
    
    func getTopAlbums(tag: String, page: String) -> Observable<Results>
    
    func getAlbumDetail(artist: String, album: String) -> Observable<AlbumDetail>
    
    func getArtistDetail(artist: String) -> Observable<ArtistDetail>
    
    func downloadImage(url: String) -> Observable<Data>
    
}
