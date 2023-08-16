//
//  MovieViewModel.swift
//  Movies-oMBD
//
//  Created by sergio joel camacho zarco on 16/08/23.
//

import Foundation
import SwiftUI

class MovieListViewModel : ObservableObject{
    
    @Published var movies = [MovieViewModel]() // to notify view and update itself
    let httpClient = HTTPClient()
    
    func searchByName(_ name : String){
        httpClient.getMovies(search: name) { result in
            switch result {
            case .success(let movies):        // from [Movie]? to [MovieViewModel]
                if let movies = movies{
                    DispatchQueue.main.async{
                        self.movies = movies.map(MovieViewModel.init) // main thread
                    }
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

struct MovieViewModel{
     
    let movie : Movie
    
    var imdbId : String{
        movie.imdbID
    }
    
    var title : String{
        movie.title
    }
    
    var poster : String{
        movie.poster
    }
    var year : String{
        movie.year
    }
}
