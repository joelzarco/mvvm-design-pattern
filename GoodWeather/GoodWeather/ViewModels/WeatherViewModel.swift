//
//  WeatherViewModel.swift
//  GoodWeather
//
//  Created by sergio joel camacho zarco on 18/09/23.
//

import Foundation

struct WeatherViewModel{
    
    let weather : Weather
    
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
