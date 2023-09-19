//
//  Store.swift
//  GoodWeather
//
//  Created by sergio joel camacho zarco on 19/09/23.
//

import Foundation

class Store : ObservableObject{
    
    @Published var weatherList : [WeatherViewModel] = [WeatherViewModel]()
    
    func addWeather(_ weather : WeatherViewModel){
        weatherList.append(weather)
    }
    
}
