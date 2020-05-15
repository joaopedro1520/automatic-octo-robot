//
//  EndpointResolver.swift
//  lastfm
//
//  Created by Joao Bastos on 12/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation
import Alamofire

enum EndPointResolver: URLRequestConvertible {
    
    // MARK: EndPoints
    case getTopAlbums(params: [String: Any])
    case getAlbumDetail(params: [String: Any])
    case getArtistDetail(params: [String: Any])
    
    // MARK: EndPoints Parameters
    private var baseURL: URL {
        
        let urlString: String = "https://ws.audioscrobbler.com/2.0/"
        
        guard let url = URL(string: urlString) else { fatalError("baseURL could not be configured") }
        return url
    }
    
    private var method: HTTPMethod {
        
        switch self {
        case .getTopAlbums,
             .getAlbumDetail,
             .getArtistDetail:
            return .get
        }
    }
    
    // MARK: - Parameters
    private var parameters: Parameters? {

        switch self {
        case .getTopAlbums(let params):
            return params
            
        case .getAlbumDetail(let params):
            return params
            
        case .getArtistDetail(let params):
            return params
        }
    }
    
    private var encoding: ParameterEncoding {
        
        switch method {
        case .get:
            return URLEncoding.queryString
        default:
            return JSONEncoding.default
        }
    }
    
    private var methodEncoding: ParameterEncoding {
        
        switch method {
        case .get:
            return URLEncoding.queryString
        default:
            return JSONEncoding.default
        }
    }
    
    private var headers: [String: String]? {
        
        switch self {
        default:
            return nil
        }
    }
    
    public var needsAuthorization: Bool {
        
        switch self {
        default:
            return false
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        
        var urlRequest: URLRequest
        urlRequest = URLRequest(url: baseURL)
        
        urlRequest.httpMethod = method.rawValue
        urlRequest.cachePolicy = .returnCacheDataElseLoad
        if let headers =  headers {
            
            for header in headers {
                urlRequest.setValue(header.key, forHTTPHeaderField: header.value)
            }
        }
        
        return try encoding.encode(urlRequest, with: parameters)
    }
}
