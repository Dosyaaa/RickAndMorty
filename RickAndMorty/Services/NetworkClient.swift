//
//  NetworkClient.swift
//  RickAndMorty
//
//  Created by Boris Dobretsov on 12/4/23.
//

import UIKit

class NetworkLayer {
    static let shared = NetworkLayer()
    
    func decode<T: Decodable>(with data: Data) -> T? {
        try? JSONDecoder().decode(T.self, from: data)
    }
    private var baseURL = URL(string: "ds")
    
    func fetch(with data: Data, completion: @escaping (Result<String,Error>) -> Void) {
        let request = URLRequest(url: baseURL!)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error {
                completion(.failure(error))
            }
            if data != nil {
                completion(.success("Got data"))
            }
        }
        .resume()
    }
}

