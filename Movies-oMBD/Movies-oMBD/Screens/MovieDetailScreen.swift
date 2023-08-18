//
//  MovieDetailScreen.swift
//  Movies-oMBD
//
//  Created by sergio joel camacho zarco on 18/08/23.
//

import SwiftUI

struct MovieDetailScreen: View {
    
    let imdbId : String
    @ObservedObject var movieDetailVM = MovieDetailViewModel()
    
    var body: some View {
        VStack{
            if(movieDetailVM.loadingState == .loading){
                Text("Loading...")
            }else if(movieDetailVM.loadingState == .success){
                // movieDetailView
                MovieDetailView(movieDetailVM: movieDetailVM)
            }else if(movieDetailVM.loadingState == .failed){
                FailedView()
            }
        } // vs
        .onAppear{
            self.movieDetailVM.getDetailsByImdbId(imdbId: self.imdbId)
        }
    }
}

