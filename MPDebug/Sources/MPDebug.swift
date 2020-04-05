//
//  MPDebug.swift
//  MyApp
//
//  Created by Manh Pham on 4/5/20.
//

import Foundation

final class MPDebugLog: NSObject {
        
    static let share = MPDebugLog()
    
    private var urlSessionInjector: URLSessionInjector?
    private var urlConnectionInjector: URLConnectionInjector?
    private let serialQueue = DispatchQueue(label: "com.manhpham.MPDebug")
    
    func start() {
        urlSessionInjector = URLSessionInjector(delegate: self)
        urlConnectionInjector = URLConnectionInjector(delegate: self)
    }
    
    func run(completion: @escaping () -> Void) {
        serialQueue.async {
            completion()
        }
    }
    
}

extension MPDebugLog: URLSessionInjectorDelegate {
    func urlSessionInjector(_ injector: URLSessionInjector!, didStart dataTask: URLSessionDataTask!) {
        run {
            print("URLSessionInjectorDelegate didStart")
            print(dataTask.currentRequest?.url ?? "")
            print(dataTask.currentRequest?.httpBody ?? "")
            print(dataTask.currentRequest?.httpMethod ?? "")
        }
    }
    
    func urlSessionInjector(_ injector: URLSessionInjector!, didReceiveResponse dataTask: URLSessionDataTask!, response: URLResponse!) {
        run {
            print("URLSessionInjectorDelegate didReceiveResponse")
            print(response ?? "")
        }
        
    }
    
    func urlSessionInjector(_ injector: URLSessionInjector!, didReceiveData dataTask: URLSessionDataTask!, data: Data!) {
        run {
            print("URLSessionInjectorDelegate didReceiveData")
            print(DataResponseParser.parse(data: data)?.type ?? "")
        }
    }
    
    func urlSessionInjector(_ injector: URLSessionInjector!, didFinishWithError dataTask: URLSessionDataTask!, error: Error!) {
        run {
            print("URLSessionInjectorDelegate didFinishWithError")
            print(error ?? "")
        }
    }
}

extension MPDebugLog: URLConnectionInjectorDelegate {
    func urlConnectionInjector(_ injector: URLConnectionInjector!, didReceiveResponse urlConnection: NSURLConnection!, response: URLResponse!) {

    }
    
    func urlConnectionInjector(_ injector: URLConnectionInjector!, didReceiveData urlConnection: NSURLConnection!, data: Data!) {

    }
    
    func urlConnectionInjector(_ injector: URLConnectionInjector!, didFailWithError urlConnection: NSURLConnection!, error: Error!) {

    }
    
    func urlConnectionInjector(_ injector: URLConnectionInjector!, didFinishLoading urlConnection: NSURLConnection!) {

    }
}
