//
//  ResultsListViewModelTest.swift
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

class ResultsListViewModelTest: XCTestCase {

    var viewModel: ResultsListViewModel!
    
    // MARK: Rx
    let disposeBag = DisposeBag()
    let scheduler = TestScheduler(initialClock: 0)
    
    var resultsListRepository = MockResultsListRepositoryProtocol()
    
    override func setUp() {
        viewModel = ResultsListViewModel(repository: resultsListRepository)
    }
    
    func testShouldCallGetAlbumsOnNext() {
        // Arrange
        
        stub(resultsListRepository) { repository in
            when(repository.getAlbums(tag:"hip-hop", page: "1"))
                .thenReturn(Observable.just(self.loadJson()!))
        }
        
        stub(resultsListRepository) { repository in
            when(repository.getImage(url: "https://lastfm.freetls.fastly.net/i/u/300x300/b3604006f4e54e73b76246962135dff8.png"))
                .thenReturn(Observable.just(getConvertedImage()!))
        }

        
        let albumList = scheduler.createObserver(Results.self)
        _ = viewModel.requestResult.subscribe(albumList).disposed(by: disposeBag)
        
        // Act
        viewModel.getAlbums(tag: "hip-hop", page: "1")
        
        // Assert
        XCTAssertEqual(albumList.events, [.next(0, self.loadJson()!)])
        
    }
    
    func loadJson() -> Results? {
        if let url = Bundle.main.url(forResource: "testTopHipHopAlbum", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(Results.self, from: data)
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
