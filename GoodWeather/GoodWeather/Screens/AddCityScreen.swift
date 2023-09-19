//
//  AddCityScreen.swift
//  GoodWeather
//
//  Created by sergio joel camacho zarco on 14/09/23.
//

import Foundation
import SwiftUI

struct AddCityScreen: View {
    
    @Environment(\.presentationMode) private var presentationMode
    @StateObject private var addCityVM = AddCityViewModel()
    @EnvironmentObject var store : Store
    
    var body: some View {
        
        VStack {
            VStack(spacing: 20) {
                TextField("Enter city", text: $addCityVM.city)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Save") {
                    // save weather in environment object
                    addCityVM.save { weather in
                        store.addWeather(weather)
//                        print(weather.city)
                        presentationMode.wrappedValue.dismiss()
                    }
                    
                }.padding(10)
                .frame(maxWidth: UIScreen.main.bounds.width/4)
                .foregroundColor(Color.white)
                .background(Color(#colorLiteral(red: 0.1297150552, green: 0.3200980425, blue: 0.8191890121, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            }.padding()
            .frame(maxWidth: .infinity, maxHeight: 200)
            .background(Color(#colorLiteral(red: 0.913837254, green: 0.9333122373, blue: 0.9802277684, alpha: 1)))
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
         Spacer()
        }.padding()
        
        .navigationTitle("Add City")
        .embedInNavigationView()
    }
}
