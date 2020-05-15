//
//  AlbumDetailViewModelTest.swift
//  lastfmTests
//
//  Created by Joao Bastos on 15/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation
import XCTest
import RxTest
import RxSwift
import Cuckoo

@testable import lastfm

class AlbumDetailViewModelTest: XCTestCase {
    
    var viewModel: AlbumDetailViewModel!
    
    // MARK: Rx
    let disposeBag = DisposeBag()
    let scheduler = TestScheduler(initialClock: 0)
    
    var albumDetailRepository = MockAlbumDetailRepositoryProtocol()
    
    override func setUp() {
        let dependencies = AlbumDetailDependencies(album: loadJsonAlbum()!.album, image: getConvertedImage()!)
        
        viewModel = AlbumDetailViewModel(repository: albumDetailRepository, dependencies: dependencies)
    }
    
    func testShouldCallGetAlbumsOnNext() {
        // Arrange
        
        stub(albumDetailRepository) { repository in
            when(repository.getAlbumDetail(artist: "Cher", album: "Believe"))
                .thenReturn(Observable.just(self.loadJsonAlbum()!))
        }
        
        stub(albumDetailRepository) { repository in
            when(repository.getArtistDetail(artist: "Cher"))
                .thenReturn(Observable.just(self.loadJsonArtist()!))
        }
        
        
        let albumDetail = scheduler.createObserver(AlbumDetail.self)
        _ = viewModel.album.subscribe(albumDetail).disposed(by: disposeBag)
        
        let artistDetail = scheduler.createObserver(ArtistDetail.self)
        _ = viewModel.artist.subscribe(artistDetail).disposed(by: disposeBag)
        
        // Act
        viewModel.getAlbumDetail()
        viewModel.getArtistDetail()
        
        // Assert
        XCTAssertEqual(albumDetail.events, [.next(0, self.loadJsonAlbum()!)])
        XCTAssertEqual(artistDetail.events, [.next(0, self.loadJsonArtist()!)])
    }
    
    func loadJsonAlbum() -> AlbumDetail? {
        if let url = Bundle.main.url(forResource: "testAlbumDetail", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(AlbumDetail.self, from: data)
                return jsonData
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
    
    func loadJsonArtist() -> ArtistDetail? {
        if let url = Bundle.main.url(forResource: "testArtistDetail", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(ArtistDetail.self, from: data)
                return jsonData
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
    
    func getConvertedImage() -> Data? {
        if let url = Bundle.main.url(forResource: "response", withExtension: "png") {
            do {
                return try Data(contentsOf: url)
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}
