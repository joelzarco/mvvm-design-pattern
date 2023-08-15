//
//  Movie.swift
//  Movies-oMBD
//
//  Created by sergio joel camacho zarco on 15/08/23.
//

import Foundation

struct MovieResponse : Codable{
    // there can be several movies commig back from search response
    let movies : [Movie]
    private enum CodingKeys : String, CodingKey{
        case movies = "Search"
    }
}

struct Movie : Codable{
    
    let title : String
    let year : String
    let imdbId : String
    let poster : String
    
    // some properties does not match their keys on the web service, fixing with CodingKeys
    private enum CodingKeys : String, CodingKey{
        case title = "Title"
        case year = "Year"
        case imdbId = "imdbId"
        case poster = "Poster"
    }
}
