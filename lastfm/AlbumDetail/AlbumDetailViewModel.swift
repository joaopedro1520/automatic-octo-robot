//
//  AlbumDetailViewModel.swift
//  lastfm
//
//  Created by Joao Bastos on 13/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation
import RxSwift

struct AlbumDetailDependencies {
    
    let album: Album
    let image: Data
}

protocol AlbumDetailProtocol {
    
    var album: PublishSubject<AlbumDetail> { get }
    var artist: PublishSubject<ArtistDetail> { get }
    
    init(repository: AlbumDetailRepositoryProtocol, dependencies: AlbumDetailDependencies)
    func getAlbumDetail()
    func getArtistDetail()
    func getDependencies() -> AlbumDetailDependencies
    
}

class AlbumDetailViewModel: AlbumDetailProtocol {
    
    var album = PublishSubject<AlbumDetail>()
    var artist = PublishSubject<ArtistDetail>()
    var image = PublishSubject<Data>()
    let repository: AlbumDetailRepositoryProtocol
    let dependencies: AlbumDetailDependencies
    let disposebag = DisposeBag()
    
    required init(repository: AlbumDetailRepositoryProtocol, dependencies: AlbumDetailDependencies) {
        self.repository = repository
        self.dependencies = dependencies
    }
    
    func getAlbumDetail() {
        
        guard let artist = dependencies.album.artist?.name else { return  }
        guard let albumName = dependencies.album.name else { return  }
        
        repository.getAlbumDetail(artist: artist, album: albumName)
            .observeOn(MainScheduler.instance)
            .subscribe(onNext : { [weak self] response in
                
                self?.album.onNext(response)
                
                }, onError : { error in
                    self.album.onError(error)
                    
            }).disposed(by : disposebag)
        
    }
    
    func getArtistDetail() {
        
        guard let artist = dependencies.album.artist?.name else { return  }
        
        repository.getArtistDetail(artist: artist)
            .observeOn(MainScheduler.instance)
            .subscribe(onNext : { [weak self] response in
                
                self?.artist.onNext(response)
                
                }, onError : { error in
                    self.artist.onError(error)
                    
            }).disposed(by : disposebag)
    }
    
    func getDependencies() -> AlbumDetailDependencies {
        return dependencies
    }
    
}
