//
//  Error.swift
//  lastfm
//
//  Created by Joao Bastos on 14/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation
import Alamofire

struct ErrorCodable: Codable {
    let error: Int?
    let message: String?
}

public enum NetworkErrorType {
    
    case noInternet
    case unknown
    case apiKey
    
    func description() -> String{
        
        switch self {
            
        case .noInternet:
            return "no internet"
        case .unknown:
            return  "unknown error"
        case .apiKey:
            return " invalid/missing api key"
        }
    }
}

public class NetworkError: Error {
    
    var errorType: NetworkErrorType?
    
    public init(errorType: NetworkErrorType) {
        
        self.errorType = errorType
    }
}
