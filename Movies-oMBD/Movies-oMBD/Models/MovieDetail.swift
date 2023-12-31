//
//  MovieDetail.swift
//  Movies-oMBD
//
//  Created by sergio joel camacho zarco on 17/08/23.
//

import Foundation

struct MovieDetail : Decodable{
    
    let title : String
    let year : String
    let rated : String
    let released : String
    let runtime : String
    let genre : String
    let director : String
    let writer : String
    let actors : String
    let plot : String
    let language : String
    let country : String
    let awards : String
    let poster : String
    let ratings : [[String : String]]
    let metaScore : String
    let imdbRating : String
    let imdbVotes : String
    let imdbId : String
    let type : String
    let dvd : String
    let boxOffice : String
    let production : String
    let website : String
    let response : String
    
    private enum CodingKeys : String, CodingKey{
        case title = "Title"
        case year = "Year"
        case rated = "Rated"
        case released = "Released"
        case runtime = "Runtime"
        case genre = "Genre"
        case director = "Director"
        case writer = "Writer"
        case actors = "Actors"
        case plot = "Plot"
        case language = "Language"
        case country = "Country"
        case awards = "Awards"
        case poster = "Poster"
        case ratings = "Ratings"
        case metaScore = "Metascore"
        case imdbRating = "imdbRating"
        case imdbVotes = "imdbVotes"
        case imdbId = "imdbID"
        case type = "Type"
        case dvd = "DVD"
        case boxOffice = "BoxOffice"
        case production = "Production"
        case website = "Website"
        case response = "Response"
        
    }
}
