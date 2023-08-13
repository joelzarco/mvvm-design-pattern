//
//  ContentView.swift
//  mvvm-counter
//
//  Created by sergio joel camacho zarco on 13/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var counterVM = CounterViewModel() // we will be listening to changes
    
    init(){
        counterVM = CounterViewModel()
    }
    
    var body: some View {
        VStack {
            Text(counterVM.premium ? "Premium" : "Not premium")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(counterVM.premium ? .pink : .primary)
            Text("\(counterVM.value)")
                .font(.title)
            Button("Increment"){
                counterVM.increment()
                print("increment")
            }
        }
        .padding()
    }
}

