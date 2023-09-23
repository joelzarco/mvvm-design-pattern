//
//  WeatherListScreen.swift
//  GoodWeather
//
//  Created by sergio joel camacho zarco on 14/09/23.
//

import SwiftUI

enum Sheets : Identifiable{
    var id: UUID{
        return UUID()
    }
    case addNewCity
    case settings
}

struct WeatherListScreen: View {
    
    @State private var activeSheet : Sheets?
    @EnvironmentObject var store : Store
        
    var body: some View {
        
        List {
            ForEach(store.weatherList, id: \.id) { weather in
                WeatherCell(weather: weather)
            }
        }
        .listStyle(PlainListStyle())
        .sheet(item: $activeSheet, content: { item in
            switch item{
                case.addNewCity:
                    AddCityScreen()
                    .environmentObject(store)
                case .settings:
                    SettingsScreen()
                    .environmentObject(store)
            }
        })
        .navigationBarItems(leading: Button(action: {
            activeSheet = .settings
        }) {
            Image(systemName: "gearshape")
        }, trailing: Button(action: {
            activeSheet = .addNewCity
        }, label: {
            Image(systemName: "plus")
        }))
        .navigationTitle("Cities")
        .embedInNavigationView()
       
    }
}

struct WeatherCell: View {
    
    @EnvironmentObject var store : Store
    let weather : WeatherViewModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 15) {
                Text(weather.city)
                    .fontWeight(.bold)
                HStack {
                    Image(systemName: "sunrise")
                    Text("\(weather.sunrise.formatAsString())")
                }
                HStack {
                    Image(systemName: "sunset")
                    Text("\(weather.sunset.formatAsString())")
                }
            }
            Spacer()
            
            URLImage(url: Constants.Urls.weatherUrlAsStringByIcon(icon: weather.icon))
                .frame(width: 50, height: 50)
            
            Text("\(Int(weather.getTemperatureByUnit(unit: store.selectedUnit))) \(String(store.selectedUnit.displayText.prefix(1)))") // only first letter of selected unit
            
        }
        .padding()
        .background(Color(#colorLiteral(red: 0.9133135676, green: 0.9335765243, blue: 0.98070997, alpha: 1)))
        .clipShape(RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))

    }
}
