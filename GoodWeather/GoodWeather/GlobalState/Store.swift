//
//  Store.swift
//  GoodWeather
//
//  Created by sergio joel camacho zarco on 19/09/23.
//

import Foundation

class Store : ObservableObject{
    
    @Published var selectedUnit : TemperatureUnit = .kelvin
    @Published var weatherList : [WeatherViewModel] = [WeatherViewModel]()
    
    init(){
        selectedUnit = UserDefaults.standard.unit
    }
    
    func addWeather(_ weather : WeatherViewModel){
        weatherList.append(weather)
    }
    
}
