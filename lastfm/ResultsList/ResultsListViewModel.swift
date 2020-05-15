//
//  ResultsListViewModel.swift
//  lastfm
//
//  Created by Joao Bastos on 13/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation
import RxSwift

protocol ResultsListProtocol {
    
    var requestResult: PublishSubject<Results> { get }
    var albumList: [Album] { get }
    var downloadedImages: [Data] { get }
    var totalPages: Int { get }
    var pageNumber: Int { get set }
    init(repository: ResultsListRepositoryProtocol)
    func getAlbums(tag: String, page: String)
    func getImage(url: String)
    
}

class ResultsListViewModel: ResultsListProtocol {
    
    var pageNumber: Int = 1
    var totalPages: Int = 0
    var downloadedImages: [Data] = []
    var albumList:[Album] = []
    
    var requestResult = PublishSubject<Results>()
    var results: Results?
    let repository: ResultsListRepositoryProtocol
    let disposebag = DisposeBag()
    
    required init(repository: ResultsListRepositoryProtocol) {
        self.repository = repository
    }
    
    func getAlbums(tag: String, page: String) {
        repository.getAlbums(tag: tag, page: page)
            .observeOn(MainScheduler.instance)
            .subscribe(onNext : { [weak self] response in
                
                self?.results = response
                self?.totalPages = Int(response.albums.attr.totalPages ?? "1")!
                self?.pageNumber = Int(response.albums.attr.page ?? "1")!
                let list = response.albums.album
                self?.albumList.append(contentsOf: list)
                self?.downloadImages(albums: list)
                
                }, onError : { error in
                    self.requestResult.onError(error)
                    
            }).disposed(by : disposebag)
    }
    
    func downloadImages( albums: [Album]){
        
        for album in albums {
            getImage(url: album.image?.last?.text ?? "")
        }
        
    }
    
    func getImage(url: String) {
        repository.getImage(url: url)
            .observeOn(MainScheduler.instance)
            .subscribe(onNext : { [weak self] response in
                
                self?.downloadedImages.append(response)
                
                while (self?.albumList.count != self?.downloadedImages.count){
                    return
                }
                
                self?.requestResult.onNext(self!.results!)
                
                }, onError : { error in
                    self.requestResult.onError(error)
            }).disposed(by : disposebag)
    }
    
}
