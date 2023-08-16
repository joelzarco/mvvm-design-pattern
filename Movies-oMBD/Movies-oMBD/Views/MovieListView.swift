//
//  MovieListView.swift
//  Movies-oMBD
//
//  Created by sergio joel camacho zarco on 16/08/23.
//

import SwiftUI

struct MovieListView: View {
    
    let movies : [MovieViewModel]
    
    var body: some View {
        List(self.movies, id: \.imdbId){ movie in
            MovieCell(movie: movie) // HS
        } // lst
        .listStyle(PlainListStyle())
    }
}

struct MovieCell: View {
    let movie : MovieViewModel
    
    var body: some View {
        HStack(alignment: .top) {
            URLImage(url: movie.poster)
                .frame(maxWidth: 100, maxHeight: 120)
                .cornerRadius(5)
                .scaledToFit()
            //                    .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading){
                Text(movie.title)
                    .font(.headline).bold()
                    .foregroundColor(.primary)
                Text(movie.year)
                    .font(.body)
                    .foregroundColor(.secondary)
            }
            .padding()
        }
    }
}
