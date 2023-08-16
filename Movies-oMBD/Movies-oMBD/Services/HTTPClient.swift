//
//  HTTPClient.swift
//  Movies-oMBD
//
//  Created by sergio joel camacho zarco on 15/08/23.
//

import Foundation

enum NetworkError : Error{
    case badURL
    case noData
    case decodingError
}

class HTTPClient{
    
    func getMovies(search : String, completion : @escaping (Result<[Movie]?, NetworkError>) -> Void){
        
        guard let url = URL(string: "https://www.omdbapi.com/?s=\(search)&apikey=\(Constants.API_KEY)") else{
            print("barUrl error")
            return completion(.failure(.badURL))
        }
        URLSession.shared.dataTask(with: url){ data, response, error in
            guard let data = data, error == nil else{
                print("noData error")
                return completion(.failure(.noData))
            }
            
            guard let moviesResponse = try? JSONDecoder().decode(MovieResponse.self, from: data) else{
                print("decoding error")
                return completion(.failure(.decodingError))
            }
            
            completion(.success(moviesResponse.movies))
            
        }.resume()
    }
}


