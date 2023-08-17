//
//  URL+extensions.swift
//  Movies-oMBD
//
//  Created by sergio joel camacho zarco on 15/08/23.
//

import Foundation

extension URL{
    
    static func forMoviesByImdbId(_ imdbId : String) -> URL?{
        return URL(string: "https://www.omdbapi.com/?i=\(imdbId)&apikey=\(Constants.API_KEY)")
    }
    
    static func forMoviesByName(_ name : String) -> URL?{
        return URL(string: "https://www.omdbapi.com/?s=\(name)&apikey=\(Constants.API_KEY)")
    }
}
