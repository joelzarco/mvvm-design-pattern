//
//  MovieDetailView.swift
//  Movies-oMBD
//
//  Created by sergio joel camacho zarco on 18/08/23.
//

import SwiftUI

struct MovieDetailView: View {
    
    let movieDetailVM : MovieDetailViewModel
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 10){
                URLImage(url: movieDetailVM.poster)
                    .cornerRadius(10)
                Text(movieDetailVM.title)
                    .font(.title).bold()
                Text(movieDetailVM.plot)
                    .font(.body)
                Text("Director")
                    .fontWeight(.bold)
                Text(movieDetailVM.director)
                
                HStack{
                    Rating(rating: .constant(movieDetailVM.rating))
                    Text("\(movieDetailVM.rating)/10")
                }.padding(.top, 10)
                Spacer()
            } // vs
            .navigationTitle(self.movieDetailVM.title)
        } //scrll
    }
}

