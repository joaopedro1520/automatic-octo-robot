//
//  ErrorHandler.swift
//  lastfm
//
//  Created by Joao Bastos on 12/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation
import Alamofire

class ErrorHandler {
    
    func handle(error: AFError?, response: Data?) -> NetworkError {
        
        guard let error = error else {
            return NetworkError(errorType: .unknown)
        }
        debugPrint(error)
        
        //validate type of errors
        switch error {
            
        case .sessionTaskFailed(let sessionError):
            if let urlError = sessionError as? URLError {
                
                if urlError.code == .notConnectedToInternet {
                    return NetworkError(errorType: NetworkErrorType.noInternet)
                }
            }
            
        default:
            break
        }
        
        if let errorData = response {
            
            print(String(data:errorData, encoding:.utf8) ?? "")
            do {
                let error = try JSONDecoder().decode( ErrorCodable.self, from: errorData)
                
                return getErrorByID(errorCode: error.error ?? -1)
            }catch{
                
                print("Error: Converting network's error to app's error's structure")
            }
        }
        
        return NetworkError(errorType: NetworkErrorType.unknown)
    }
    
    func getErrorByID(errorCode: Int) -> NetworkError {
        
        switch errorCode {
        case 10:  return NetworkError(errorType: NetworkErrorType.apiKey)
        default:
            return NetworkError(errorType: NetworkErrorType.unknown)
        }
    }
    
}
