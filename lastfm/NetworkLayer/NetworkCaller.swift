//
//  NetworkCaller.swift
//  lastfm
//
//  Created by Joao Bastos on 12/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import Foundation
import Alamofire
import RxSwift

class NetworkCaller: NSObject {
    
    // MARK: Variables
    private static var sessionManager = Session()
    
    /// This method make a request using the Codable
    /// - Parameter urlConvertible: Codabel Onject to parse teh response
    /// - Returns: The Codable object if success or not
    static func requestJSON<T: Codable> (_ urlConvertible: URLRequestConvertible) -> Observable<T> {
        
        //Create an RxSwift observable, which will be the one to call the request when subscribed to
        return Observable<T>.create { observer in
            let request = self.sessionManager.request(urlConvertible)
                .validate()
                .responseData { (response: AFDataResponse<Data>) in
                    
                    switch response.result {
                    case .success(let value):
                        
                        do {
                            let decoder = JSONDecoder()
                            let data = try decoder.decode(T.self, from: value)
                            observer.onNext(data)
                            observer.onCompleted()
                        } catch {
                            observer.onError(error)
                        }
                    case .failure:
                        observer.onError(ErrorHandler().handle(error: response.error, response: response.data))
                        
                    }
            }
            
            //return a disposable to stop the request
            return Disposables.create {
                request.cancel()
            }
        }
    }
    
    static func requestImage (_ urlConvertible: URLRequestConvertible) -> Observable<Data> {
        
        //Create an RxSwift observable, which will be the one to call the request when subscribed to
        return Observable<Data>.create { observer in
            let request = self.sessionManager.request(urlConvertible)
                .validate()
                .responseData { (response: AFDataResponse<Data>) in
                    
                    switch response.result {
                    case .success(let value):
                        
                        observer.onNext(value)
                        observer.onCompleted()
                        
                    case .failure:
                        observer.onError(ErrorHandler().handle(error: response.error, response: response.data))
                        
                    }
            }
            
            //return a disposable to stop the request
            return Disposables.create {
                request.cancel()
            }
        }
    }
    
    /// Cancel all the active requests
    static func cancelCalls() {
        
        sessionManager.session.getTasksWithCompletionHandler { dataTasks, _, _ in
            dataTasks.forEach { $0.cancel() }
        }
    }
}
