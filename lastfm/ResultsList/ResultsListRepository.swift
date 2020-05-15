//
//  ResultsListRepository.swift
//  lastfm
//
//  Created by Joao Bastos on 13/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation
import RxSwift

protocol ResultsListRepositoryProtocol {

    func getAlbums(tag: String, page: String) -> Observable<Results>
    func getImage(url: String) -> Observable<Data>
}

struct ResultsListRepository: ResultsListRepositoryProtocol {
    
    func getAlbums(tag:String, page: String) -> Observable<Results> {
       return Repository.shared.getTopAlbums(tag: tag, page: page)
    }
    
    func getImage(url: String) -> Observable<Data>{
        return Repository.shared.downloadImage(url: url)
    }

}
