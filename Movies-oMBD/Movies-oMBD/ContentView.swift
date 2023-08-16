//
//  ContentView.swift
//  Movies-oMBD
//
//  Created by sergio joel camacho zarco on 14/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear{ // just for testing client
            HTTPClient().getMovies(search: "Joker") { result in
                switch result {
                case .success(let movies):
                    print(movies)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
