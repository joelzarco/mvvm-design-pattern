//
//  MovieListView.swift
//  Movies-oMBD
//
//  Created by sergio joel camacho zarco on 16/08/23.
//

import SwiftUI

struct MovieListScreen: View {
    
    @ObservedObject private var movieListVM : MovieListViewModel
    
    init() { // do not use auto complete on init :(
        self.movieListVM = MovieListViewModel()
        self.movieListVM.searchByName("batman")
    }
    
    var body: some View {
        NavigationView{
            VStack{
                MovieListView(movies: movieListVM.movies)
            }
            .navigationTitle("Movies by oMDB")
            .preferredColorScheme(.dark)
        }
    }
}

