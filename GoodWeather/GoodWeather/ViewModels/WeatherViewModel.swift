//
//  WeatherViewModel.swift
//  GoodWeather
//
//  Created by sergio joel camacho zarco on 18/09/23.
//

import Foundation

struct WeatherViewModel{
    
    let weather : Weather
    
    func getTemperatureByUnit(unit : TemperatureUnit) -> Double{
        switch unit {
        case .celsius:
            return weather.temperature - 273.15
        case .fahrenheit:
            return 1.8 * (weather.temperature - 273) + 32
        case .kelvin:
            return weather.temperature
        }
    }
    
    let id = UUID()
    
    var temperature : Double{
        return weather.temperature
    }
    
    var city : String{
        return weather.city
    }
    
    var icon : String{
        return weather.icon
    }
    
    var sunrise : Date{
        return weather.sunrise
    }
    
    var sunset : Date{
        return weather.sunset
    }
}
