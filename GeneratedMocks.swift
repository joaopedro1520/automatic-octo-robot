// MARK: - Mocks generated from file: lastfm/AlbumDetail/AlbumDetailRepository.swift at 2020-05-15 16:06:33 +0000

//
//  AlbumDetailRepository.swift
//  lastfm
//
//  Created by Joao Bastos on 13/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Cuckoo
@testable import lastfm

import Foundation
import RxSwift


 class MockAlbumDetailRepositoryProtocol: AlbumDetailRepositoryProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = AlbumDetailRepositoryProtocol
    
     typealias Stubbing = __StubbingProxy_AlbumDetailRepositoryProtocol
     typealias Verification = __VerificationProxy_AlbumDetailRepositoryProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AlbumDetailRepositoryProtocol?

     func enableDefaultImplementation(_ stub: AlbumDetailRepositoryProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getAlbumDetail(artist: String, album: String) -> Observable<AlbumDetail> {
        
    return cuckoo_manager.call("getAlbumDetail(artist: String, album: String) -> Observable<AlbumDetail>",
            parameters: (artist, album),
            escapingParameters: (artist, album),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getAlbumDetail(artist: artist, album: album))
        
    }
    
    
    
     func getArtistDetail(artist: String) -> Observable<ArtistDetail> {
        
    return cuckoo_manager.call("getArtistDetail(artist: String) -> Observable<ArtistDetail>",
            parameters: (artist),
            escapingParameters: (artist),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getArtistDetail(artist: artist))
        
    }
    

	 struct __StubbingProxy_AlbumDetailRepositoryProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getAlbumDetail<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(artist: M1, album: M2) -> Cuckoo.ProtocolStubFunction<(String, String), Observable<AlbumDetail>> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: artist) { $0.0 }, wrap(matchable: album) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAlbumDetailRepositoryProtocol.self, method: "getAlbumDetail(artist: String, album: String) -> Observable<AlbumDetail>", parameterMatchers: matchers))
	    }
	    
	    func getArtistDetail<M1: Cuckoo.Matchable>(artist: M1) -> Cuckoo.ProtocolStubFunction<(String), Observable<ArtistDetail>> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: artist) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAlbumDetailRepositoryProtocol.self, method: "getArtistDetail(artist: String) -> Observable<ArtistDetail>", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AlbumDetailRepositoryProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getAlbumDetail<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(artist: M1, album: M2) -> Cuckoo.__DoNotUse<(String, String), Observable<AlbumDetail>> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: artist) { $0.0 }, wrap(matchable: album) { $0.1 }]
	        return cuckoo_manager.verify("getAlbumDetail(artist: String, album: String) -> Observable<AlbumDetail>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getArtistDetail<M1: Cuckoo.Matchable>(artist: M1) -> Cuckoo.__DoNotUse<(String), Observable<ArtistDetail>> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: artist) { $0 }]
	        return cuckoo_manager.verify("getArtistDetail(artist: String) -> Observable<ArtistDetail>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AlbumDetailRepositoryProtocolStub: AlbumDetailRepositoryProtocol {
    

    

    
     func getAlbumDetail(artist: String, album: String) -> Observable<AlbumDetail>  {
        return DefaultValueRegistry.defaultValue(for: (Observable<AlbumDetail>).self)
    }
    
     func getArtistDetail(artist: String) -> Observable<ArtistDetail>  {
        return DefaultValueRegistry.defaultValue(for: (Observable<ArtistDetail>).self)
    }
    
}


// MARK: - Mocks generated from file: lastfm/AlbumDetail/AlbumDetailViewModel.swift at 2020-05-15 16:06:33 +0000

//
//  AlbumDetailViewModel.swift
//  lastfm
//
//  Created by Joao Bastos on 13/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Cuckoo
@testable import lastfm

import Foundation
import RxSwift


 class MockAlbumDetailViewModel: AlbumDetailViewModel, Cuckoo.ClassMock {
    
     typealias MocksType = AlbumDetailViewModel
    
     typealias Stubbing = __StubbingProxy_AlbumDetailViewModel
     typealias Verification = __VerificationProxy_AlbumDetailViewModel

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: AlbumDetailViewModel?

     func enableDefaultImplementation(_ stub: AlbumDetailViewModel) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var album: PublishSubject<AlbumDetail> {
        get {
            return cuckoo_manager.getter("album",
                superclassCall:
                    
                    super.album
                    ,
                defaultCall: __defaultImplStub!.album)
        }
        
        set {
            cuckoo_manager.setter("album",
                value: newValue,
                superclassCall:
                    
                    super.album = newValue
                    ,
                defaultCall: __defaultImplStub!.album = newValue)
        }
        
    }
    
    
    
     override var artist: PublishSubject<ArtistDetail> {
        get {
            return cuckoo_manager.getter("artist",
                superclassCall:
                    
                    super.artist
                    ,
                defaultCall: __defaultImplStub!.artist)
        }
        
        set {
            cuckoo_manager.setter("artist",
                value: newValue,
                superclassCall:
                    
                    super.artist = newValue
                    ,
                defaultCall: __defaultImplStub!.artist = newValue)
        }
        
    }
    
    
    
     override var image: PublishSubject<Data> {
        get {
            return cuckoo_manager.getter("image",
                superclassCall:
                    
                    super.image
                    ,
                defaultCall: __defaultImplStub!.image)
        }
        
        set {
            cuckoo_manager.setter("image",
                value: newValue,
                superclassCall:
                    
                    super.image = newValue
                    ,
                defaultCall: __defaultImplStub!.image = newValue)
        }
        
    }
    

    

    
    
    
     override func getAlbumDetail()  {
        
    return cuckoo_manager.call("getAlbumDetail()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.getAlbumDetail()
                ,
            defaultCall: __defaultImplStub!.getAlbumDetail())
        
    }
    
    
    
     override func getArtistDetail()  {
        
    return cuckoo_manager.call("getArtistDetail()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.getArtistDetail()
                ,
            defaultCall: __defaultImplStub!.getArtistDetail())
        
    }
    
    
    
     override func getDependencies() -> AlbumDetailDependencies {
        
    return cuckoo_manager.call("getDependencies() -> AlbumDetailDependencies",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.getDependencies()
                ,
            defaultCall: __defaultImplStub!.getDependencies())
        
    }
    

	 struct __StubbingProxy_AlbumDetailViewModel: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var album: Cuckoo.ClassToBeStubbedProperty<MockAlbumDetailViewModel, PublishSubject<AlbumDetail>> {
	        return .init(manager: cuckoo_manager, name: "album")
	    }
	    
	    
	    var artist: Cuckoo.ClassToBeStubbedProperty<MockAlbumDetailViewModel, PublishSubject<ArtistDetail>> {
	        return .init(manager: cuckoo_manager, name: "artist")
	    }
	    
	    
	    var image: Cuckoo.ClassToBeStubbedProperty<MockAlbumDetailViewModel, PublishSubject<Data>> {
	        return .init(manager: cuckoo_manager, name: "image")
	    }
	    
	    
	    func getAlbumDetail() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAlbumDetailViewModel.self, method: "getAlbumDetail()", parameterMatchers: matchers))
	    }
	    
	    func getArtistDetail() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAlbumDetailViewModel.self, method: "getArtistDetail()", parameterMatchers: matchers))
	    }
	    
	    func getDependencies() -> Cuckoo.ClassStubFunction<(), AlbumDetailDependencies> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAlbumDetailViewModel.self, method: "getDependencies() -> AlbumDetailDependencies", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_AlbumDetailViewModel: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var album: Cuckoo.VerifyProperty<PublishSubject<AlbumDetail>> {
	        return .init(manager: cuckoo_manager, name: "album", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var artist: Cuckoo.VerifyProperty<PublishSubject<ArtistDetail>> {
	        return .init(manager: cuckoo_manager, name: "artist", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var image: Cuckoo.VerifyProperty<PublishSubject<Data>> {
	        return .init(manager: cuckoo_manager, name: "image", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func getAlbumDetail() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getAlbumDetail()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getArtistDetail() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getArtistDetail()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getDependencies() -> Cuckoo.__DoNotUse<(), AlbumDetailDependencies> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getDependencies() -> AlbumDetailDependencies", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class AlbumDetailViewModelStub: AlbumDetailViewModel {
    
    
     override var album: PublishSubject<AlbumDetail> {
        get {
            return DefaultValueRegistry.defaultValue(for: (PublishSubject<AlbumDetail>).self)
        }
        
        set { }
        
    }
    
    
     override var artist: PublishSubject<ArtistDetail> {
        get {
            return DefaultValueRegistry.defaultValue(for: (PublishSubject<ArtistDetail>).self)
        }
        
        set { }
        
    }
    
    
     override var image: PublishSubject<Data> {
        get {
            return DefaultValueRegistry.defaultValue(for: (PublishSubject<Data>).self)
        }
        
        set { }
        
    }
    

    

    
     override func getAlbumDetail()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func getArtistDetail()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func getDependencies() -> AlbumDetailDependencies  {
        return DefaultValueRegistry.defaultValue(for: (AlbumDetailDependencies).self)
    }
    
}


// MARK: - Mocks generated from file: lastfm/ResultsList/ResultsListRepository.swift at 2020-05-15 16:06:33 +0000

//
//  ResultsListRepository.swift
//  lastfm
//
//  Created by Joao Bastos on 13/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Cuckoo
@testable import lastfm

import Foundation
import RxSwift


 class MockResultsListRepositoryProtocol: ResultsListRepositoryProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ResultsListRepositoryProtocol
    
     typealias Stubbing = __StubbingProxy_ResultsListRepositoryProtocol
     typealias Verification = __VerificationProxy_ResultsListRepositoryProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ResultsListRepositoryProtocol?

     func enableDefaultImplementation(_ stub: ResultsListRepositoryProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getAlbums(tag: String, page: String) -> Observable<Results> {
        
    return cuckoo_manager.call("getAlbums(tag: String, page: String) -> Observable<Results>",
            parameters: (tag, page),
            escapingParameters: (tag, page),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getAlbums(tag: tag, page: page))
        
    }
    
    
    
     func getImage(url: String) -> Observable<Data> {
        
    return cuckoo_manager.call("getImage(url: String) -> Observable<Data>",
            parameters: (url),
            escapingParameters: (url),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getImage(url: url))
        
    }
    

	 struct __StubbingProxy_ResultsListRepositoryProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getAlbums<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(tag: M1, page: M2) -> Cuckoo.ProtocolStubFunction<(String, String), Observable<Results>> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: tag) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockResultsListRepositoryProtocol.self, method: "getAlbums(tag: String, page: String) -> Observable<Results>", parameterMatchers: matchers))
	    }
	    
	    func getImage<M1: Cuckoo.Matchable>(url: M1) -> Cuckoo.ProtocolStubFunction<(String), Observable<Data>> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: url) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockResultsListRepositoryProtocol.self, method: "getImage(url: String) -> Observable<Data>", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ResultsListRepositoryProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getAlbums<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(tag: M1, page: M2) -> Cuckoo.__DoNotUse<(String, String), Observable<Results>> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: tag) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return cuckoo_manager.verify("getAlbums(tag: String, page: String) -> Observable<Results>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getImage<M1: Cuckoo.Matchable>(url: M1) -> Cuckoo.__DoNotUse<(String), Observable<Data>> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: url) { $0 }]
	        return cuckoo_manager.verify("getImage(url: String) -> Observable<Data>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ResultsListRepositoryProtocolStub: ResultsListRepositoryProtocol {
    

    

    
     func getAlbums(tag: String, page: String) -> Observable<Results>  {
        return DefaultValueRegistry.defaultValue(for: (Observable<Results>).self)
    }
    
     func getImage(url: String) -> Observable<Data>  {
        return DefaultValueRegistry.defaultValue(for: (Observable<Data>).self)
    }
    
}


// MARK: - Mocks generated from file: lastfm/ResultsList/ResultsListViewModel.swift at 2020-05-15 16:06:33 +0000

//
//  ResultsListViewModel.swift
//  lastfm
//
//  Created by Joao Bastos on 13/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Cuckoo
@testable import lastfm

import Foundation
import RxSwift


 class MockResultsListProtocol: ResultsListProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ResultsListProtocol
    
     typealias Stubbing = __StubbingProxy_ResultsListProtocol
     typealias Verification = __VerificationProxy_ResultsListProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ResultsListProtocol?

     func enableDefaultImplementation(_ stub: ResultsListProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var requestResult: PublishSubject<Results> {
        get {
            return cuckoo_manager.getter("requestResult",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.requestResult)
        }
        
    }
    
    
    
     var albumList: [Album] {
        get {
            return cuckoo_manager.getter("albumList",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.albumList)
        }
        
    }
    
    
    
     var downloadedImages: [Data] {
        get {
            return cuckoo_manager.getter("downloadedImages",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.downloadedImages)
        }
        
    }
    
    
    
     var totalPages: Int {
        get {
            return cuckoo_manager.getter("totalPages",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.totalPages)
        }
        
    }
    
    
    
     var pageNumber: Int {
        get {
            return cuckoo_manager.getter("pageNumber",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.pageNumber)
        }
        
        set {
            cuckoo_manager.setter("pageNumber",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.pageNumber = newValue)
        }
        
    }
    

    
    
     required init(repository: ResultsListRepositoryProtocol) {
        
    }
    

    
    
    
     func getAlbums(tag: String, page: String)  {
        
    return cuckoo_manager.call("getAlbums(tag: String, page: String)",
            parameters: (tag, page),
            escapingParameters: (tag, page),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getAlbums(tag: tag, page: page))
        
    }
    
    
    
     func getImage(url: String)  {
        
    return cuckoo_manager.call("getImage(url: String)",
            parameters: (url),
            escapingParameters: (url),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getImage(url: url))
        
    }
    

	 struct __StubbingProxy_ResultsListProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var requestResult: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockResultsListProtocol, PublishSubject<Results>> {
	        return .init(manager: cuckoo_manager, name: "requestResult")
	    }
	    
	    
	    var albumList: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockResultsListProtocol, [Album]> {
	        return .init(manager: cuckoo_manager, name: "albumList")
	    }
	    
	    
	    var downloadedImages: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockResultsListProtocol, [Data]> {
	        return .init(manager: cuckoo_manager, name: "downloadedImages")
	    }
	    
	    
	    var totalPages: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockResultsListProtocol, Int> {
	        return .init(manager: cuckoo_manager, name: "totalPages")
	    }
	    
	    
	    var pageNumber: Cuckoo.ProtocolToBeStubbedProperty<MockResultsListProtocol, Int> {
	        return .init(manager: cuckoo_manager, name: "pageNumber")
	    }
	    
	    
	    func getAlbums<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(tag: M1, page: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, String)> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: tag) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockResultsListProtocol.self, method: "getAlbums(tag: String, page: String)", parameterMatchers: matchers))
	    }
	    
	    func getImage<M1: Cuckoo.Matchable>(url: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: url) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockResultsListProtocol.self, method: "getImage(url: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ResultsListProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var requestResult: Cuckoo.VerifyReadOnlyProperty<PublishSubject<Results>> {
	        return .init(manager: cuckoo_manager, name: "requestResult", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var albumList: Cuckoo.VerifyReadOnlyProperty<[Album]> {
	        return .init(manager: cuckoo_manager, name: "albumList", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var downloadedImages: Cuckoo.VerifyReadOnlyProperty<[Data]> {
	        return .init(manager: cuckoo_manager, name: "downloadedImages", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var totalPages: Cuckoo.VerifyReadOnlyProperty<Int> {
	        return .init(manager: cuckoo_manager, name: "totalPages", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var pageNumber: Cuckoo.VerifyProperty<Int> {
	        return .init(manager: cuckoo_manager, name: "pageNumber", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func getAlbums<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(tag: M1, page: M2) -> Cuckoo.__DoNotUse<(String, String), Void> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: tag) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return cuckoo_manager.verify("getAlbums(tag: String, page: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getImage<M1: Cuckoo.Matchable>(url: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: url) { $0 }]
	        return cuckoo_manager.verify("getImage(url: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ResultsListProtocolStub: ResultsListProtocol {
    
    
     var requestResult: PublishSubject<Results> {
        get {
            return DefaultValueRegistry.defaultValue(for: (PublishSubject<Results>).self)
        }
        
    }
    
    
     var albumList: [Album] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([Album]).self)
        }
        
    }
    
    
     var downloadedImages: [Data] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([Data]).self)
        }
        
    }
    
    
     var totalPages: Int {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int).self)
        }
        
    }
    
    
     var pageNumber: Int {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int).self)
        }
        
        set { }
        
    }
    

    
     required init(repository: ResultsListRepositoryProtocol) {
        
    }
    

    
     func getAlbums(tag: String, page: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func getImage(url: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockResultsListViewModel: ResultsListViewModel, Cuckoo.ClassMock {
    
     typealias MocksType = ResultsListViewModel
    
     typealias Stubbing = __StubbingProxy_ResultsListViewModel
     typealias Verification = __VerificationProxy_ResultsListViewModel

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: ResultsListViewModel?

     func enableDefaultImplementation(_ stub: ResultsListViewModel) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var pageNumber: Int {
        get {
            return cuckoo_manager.getter("pageNumber",
                superclassCall:
                    
                    super.pageNumber
                    ,
                defaultCall: __defaultImplStub!.pageNumber)
        }
        
        set {
            cuckoo_manager.setter("pageNumber",
                value: newValue,
                superclassCall:
                    
                    super.pageNumber = newValue
                    ,
                defaultCall: __defaultImplStub!.pageNumber = newValue)
        }
        
    }
    
    
    
     override var totalPages: Int {
        get {
            return cuckoo_manager.getter("totalPages",
                superclassCall:
                    
                    super.totalPages
                    ,
                defaultCall: __defaultImplStub!.totalPages)
        }
        
        set {
            cuckoo_manager.setter("totalPages",
                value: newValue,
                superclassCall:
                    
                    super.totalPages = newValue
                    ,
                defaultCall: __defaultImplStub!.totalPages = newValue)
        }
        
    }
    
    
    
     override var downloadedImages: [Data] {
        get {
            return cuckoo_manager.getter("downloadedImages",
                superclassCall:
                    
                    super.downloadedImages
                    ,
                defaultCall: __defaultImplStub!.downloadedImages)
        }
        
        set {
            cuckoo_manager.setter("downloadedImages",
                value: newValue,
                superclassCall:
                    
                    super.downloadedImages = newValue
                    ,
                defaultCall: __defaultImplStub!.downloadedImages = newValue)
        }
        
    }
    
    
    
     override var albumList: [Album] {
        get {
            return cuckoo_manager.getter("albumList",
                superclassCall:
                    
                    super.albumList
                    ,
                defaultCall: __defaultImplStub!.albumList)
        }
        
        set {
            cuckoo_manager.setter("albumList",
                value: newValue,
                superclassCall:
                    
                    super.albumList = newValue
                    ,
                defaultCall: __defaultImplStub!.albumList = newValue)
        }
        
    }
    
    
    
     override var requestResult: PublishSubject<Results> {
        get {
            return cuckoo_manager.getter("requestResult",
                superclassCall:
                    
                    super.requestResult
                    ,
                defaultCall: __defaultImplStub!.requestResult)
        }
        
        set {
            cuckoo_manager.setter("requestResult",
                value: newValue,
                superclassCall:
                    
                    super.requestResult = newValue
                    ,
                defaultCall: __defaultImplStub!.requestResult = newValue)
        }
        
    }
    
    
    
     override var results: Results? {
        get {
            return cuckoo_manager.getter("results",
                superclassCall:
                    
                    super.results
                    ,
                defaultCall: __defaultImplStub!.results)
        }
        
        set {
            cuckoo_manager.setter("results",
                value: newValue,
                superclassCall:
                    
                    super.results = newValue
                    ,
                defaultCall: __defaultImplStub!.results = newValue)
        }
        
    }
    

    

    
    
    
     override func getAlbums(tag: String, page: String)  {
        
    return cuckoo_manager.call("getAlbums(tag: String, page: String)",
            parameters: (tag, page),
            escapingParameters: (tag, page),
            superclassCall:
                
                super.getAlbums(tag: tag, page: page)
                ,
            defaultCall: __defaultImplStub!.getAlbums(tag: tag, page: page))
        
    }
    
    
    
     override func downloadImages(albums: [Album])  {
        
    return cuckoo_manager.call("downloadImages(albums: [Album])",
            parameters: (albums),
            escapingParameters: (albums),
            superclassCall:
                
                super.downloadImages(albums: albums)
                ,
            defaultCall: __defaultImplStub!.downloadImages(albums: albums))
        
    }
    
    
    
     override func getImage(url: String)  {
        
    return cuckoo_manager.call("getImage(url: String)",
            parameters: (url),
            escapingParameters: (url),
            superclassCall:
                
                super.getImage(url: url)
                ,
            defaultCall: __defaultImplStub!.getImage(url: url))
        
    }
    

	 struct __StubbingProxy_ResultsListViewModel: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var pageNumber: Cuckoo.ClassToBeStubbedProperty<MockResultsListViewModel, Int> {
	        return .init(manager: cuckoo_manager, name: "pageNumber")
	    }
	    
	    
	    var totalPages: Cuckoo.ClassToBeStubbedProperty<MockResultsListViewModel, Int> {
	        return .init(manager: cuckoo_manager, name: "totalPages")
	    }
	    
	    
	    var downloadedImages: Cuckoo.ClassToBeStubbedProperty<MockResultsListViewModel, [Data]> {
	        return .init(manager: cuckoo_manager, name: "downloadedImages")
	    }
	    
	    
	    var albumList: Cuckoo.ClassToBeStubbedProperty<MockResultsListViewModel, [Album]> {
	        return .init(manager: cuckoo_manager, name: "albumList")
	    }
	    
	    
	    var requestResult: Cuckoo.ClassToBeStubbedProperty<MockResultsListViewModel, PublishSubject<Results>> {
	        return .init(manager: cuckoo_manager, name: "requestResult")
	    }
	    
	    
	    var results: Cuckoo.ClassToBeStubbedOptionalProperty<MockResultsListViewModel, Results> {
	        return .init(manager: cuckoo_manager, name: "results")
	    }
	    
	    
	    func getAlbums<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(tag: M1, page: M2) -> Cuckoo.ClassStubNoReturnFunction<(String, String)> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: tag) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockResultsListViewModel.self, method: "getAlbums(tag: String, page: String)", parameterMatchers: matchers))
	    }
	    
	    func downloadImages<M1: Cuckoo.Matchable>(albums: M1) -> Cuckoo.ClassStubNoReturnFunction<([Album])> where M1.MatchedType == [Album] {
	        let matchers: [Cuckoo.ParameterMatcher<([Album])>] = [wrap(matchable: albums) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockResultsListViewModel.self, method: "downloadImages(albums: [Album])", parameterMatchers: matchers))
	    }
	    
	    func getImage<M1: Cuckoo.Matchable>(url: M1) -> Cuckoo.ClassStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: url) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockResultsListViewModel.self, method: "getImage(url: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ResultsListViewModel: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var pageNumber: Cuckoo.VerifyProperty<Int> {
	        return .init(manager: cuckoo_manager, name: "pageNumber", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var totalPages: Cuckoo.VerifyProperty<Int> {
	        return .init(manager: cuckoo_manager, name: "totalPages", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var downloadedImages: Cuckoo.VerifyProperty<[Data]> {
	        return .init(manager: cuckoo_manager, name: "downloadedImages", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var albumList: Cuckoo.VerifyProperty<[Album]> {
	        return .init(manager: cuckoo_manager, name: "albumList", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var requestResult: Cuckoo.VerifyProperty<PublishSubject<Results>> {
	        return .init(manager: cuckoo_manager, name: "requestResult", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var results: Cuckoo.VerifyOptionalProperty<Results> {
	        return .init(manager: cuckoo_manager, name: "results", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func getAlbums<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(tag: M1, page: M2) -> Cuckoo.__DoNotUse<(String, String), Void> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: tag) { $0.0 }, wrap(matchable: page) { $0.1 }]
	        return cuckoo_manager.verify("getAlbums(tag: String, page: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func downloadImages<M1: Cuckoo.Matchable>(albums: M1) -> Cuckoo.__DoNotUse<([Album]), Void> where M1.MatchedType == [Album] {
	        let matchers: [Cuckoo.ParameterMatcher<([Album])>] = [wrap(matchable: albums) { $0 }]
	        return cuckoo_manager.verify("downloadImages(albums: [Album])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getImage<M1: Cuckoo.Matchable>(url: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: url) { $0 }]
	        return cuckoo_manager.verify("getImage(url: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ResultsListViewModelStub: ResultsListViewModel {
    
    
     override var pageNumber: Int {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int).self)
        }
        
        set { }
        
    }
    
    
     override var totalPages: Int {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int).self)
        }
        
        set { }
        
    }
    
    
     override var downloadedImages: [Data] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([Data]).self)
        }
        
        set { }
        
    }
    
    
     override var albumList: [Album] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([Album]).self)
        }
        
        set { }
        
    }
    
    
     override var requestResult: PublishSubject<Results> {
        get {
            return DefaultValueRegistry.defaultValue(for: (PublishSubject<Results>).self)
        }
        
        set { }
        
    }
    
    
     override var results: Results? {
        get {
            return DefaultValueRegistry.defaultValue(for: (Results?).self)
        }
        
        set { }
        
    }
    

    

    
     override func getAlbums(tag: String, page: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func downloadImages(albums: [Album])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func getImage(url: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

