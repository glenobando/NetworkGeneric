//
//  Client.swift
//  MyForum
//
//  Created by Glen Obando on 15/6/21.
//

import Foundation

public class NetworkGeneric: Network{
    var session: URLSession
    let baseURL: String //= "https://jsonplaceholder.typicode.com/posts"

    public init(session: URLSession, baseURL: String){
        self.session = session
        self.baseURL = baseURL
    }
    
    public func GET<T: Decodable>(path: String?, type:T.Type, complete: @escaping (Result<T, ApiError>) -> Void){
        var url: URL?
        if let strpath = path{
            url = URL(string: "\(self.baseURL)\(strpath)")
        }else{
            url = URL(string: baseURL)
        }
        
        let request = URLRequest(url: url!)
        
        self.fetch(type: T.self, with: request, completion: complete)

    }
    
    public func POST<T: Codable>(path: String?, object: T, type: T.Type, complete: @escaping (Result<T, ApiError>) -> Void) {
        var url: URL?
        if let strpath = path{
            url = URL(string: "\(self.baseURL)\(strpath)")
        }else{
            url = URL(string: baseURL)
        }

        var request = URLRequest(url: url!)
        request.httpMethod = "POST"

        let jsonData = try! JSONEncoder().encode(object)
        request.httpBody = jsonData
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        self.fetch(type: T.self, with: request, completion: complete)

    }

    public func PUT<T: Codable>(path: String?, object: T, type: T.Type, complete: @escaping (Result<T, ApiError>) -> Void) {
        var url: URL?
        if let strpath = path{
            url = URL(string: "\(self.baseURL)\(strpath)")
        }else{
            url = URL(string: baseURL)
        }

        var request = URLRequest(url: url!)
        request.httpMethod = "PUT"

        let jsonData = try! JSONEncoder().encode(object)
        request.httpBody = jsonData
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        self.fetch(type: T.self, with: request, completion: complete)

    }
    
    public func DELETE<T: Decodable>(path: String?, type:T.Type, complete: @escaping (Result<T, ApiError>) -> Void){
        var url: URL?
        if let strpath = path{
            url = URL(string: "\(self.baseURL)\(strpath)")
        }else{
            url = URL(string: baseURL)
        }
        
        var request = URLRequest(url: url!)
        request.httpMethod = "DELETE"

        self.fetch(type: T.self, with: request, completion: complete)

    }

}
