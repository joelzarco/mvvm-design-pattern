//
//  MovieListView.swift
//  Movies-oMBD
//
//  Created by sergio joel camacho zarco on 16/08/23.
//

import SwiftUI

struct MovieListScreen: View {
    
    @ObservedObject private var movieListVM : MovieListViewModel
    @State private var movieName : String = ""
    
    init() { // do not use auto complete on init :(
        self.movieListVM = MovieListViewModel()
//        self.movieListVM.searchByName("batman")
    }
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Search for a movie", text: $movieName)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                    .onSubmit {
                        self.movieListVM.searchByName(self.movieName)
                    }
                
                MovieListView(movies: movieListVM.movies)
            }
            .navigationTitle("Movies by oMDB")
            .preferredColorScheme(.dark)
        }
    }
}

