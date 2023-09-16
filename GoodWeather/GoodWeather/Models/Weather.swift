//
//  Weather.swift
//  GoodWeather
//
//  Created by sergio joel camacho zarco on 14/09/23.
//

import Foundation

struct WeatherResponse: Decodable {
    let name : String
    var weather : Weather
    let icon : [WeatherIcon]
    let sys : Sys
    
    private enum CodingKeys : String, CodingKey{
        case name
        case weather = "main"
        case icon = "weather"
        case sys = "sys"
    }
    
    enum WeatherKeys : String, CodingKey{
        case temperature = "temp"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        icon = try container.decode([WeatherIcon].self, forKey: .icon)
        sys = try container.decode(Sys.self, forKey: .sys)
        
        let weatherContainer = try container.nestedContainer(keyedBy: WeatherKeys.self, forKey: .weather)
        let temperature = try weatherContainer.decode(Double.self, forKey: .temperature)
        
        weather = Weather(city: name, temperature: temperature, icon: icon.first!.icon, sunrise: sys.sunrise, sunset: sys.sunset)
//        self.name = try container.decode(String.self, forKey: .name)
//        self.weather = try container.decode(Weather.self, forKey: .weather)
//        self.icon = try container.decode([WeatherIcon].self, forKey: .icon)
    }
}

struct Sys : Decodable{
    let sunrise : Date
    let sunset : Date
    
    private enum CodingKeys : String, CodingKey{
        case sunrise = "sunrise"
        case sunset = "sunset"
    }
    init(from decoder : Decoder) throws{
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let sunriseInterval = try container.decode(Int32.self, forKey: .sunrise)
        var sunsetInterval = try container.decode(Int32.self, forKey: .sunset)
        
        sunrise = Date(timeIntervalSince1970: TimeInterval(sunriseInterval))
        sunset = Date(timeIntervalSince1970: TimeInterval(sunsetInterval))
    }
}

struct Weather: Decodable {
    
    let city : String
    let temperature : Double
    let icon : String
    let sunrise : Date
    let sunset : Date
    
}

struct WeatherIcon : Decodable{
    let main : String
    let description : String
    let icon : String
}

/*
 {"coord":{"lon":-0.1257,"lat":51.5085},
 "weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],
 "base":"stations",
 "main":{"temp":289.49,"feels_like":289.37,"temp_min":286.13,"temp_max":291.13,"pressure":1011,"humidity":84},
 "visibility":10000,
 "wind":{"speed":1.54,"deg":80},
 "clouds":{"all":4},"dt":1694817274,
 "sys":{"type":2,"id":2075535,"country":"GB","sunrise":1694756087,"sunset":1694801833},
 "timezone":3600,
 "id":2643743,
 "name":"London",
 "cod":200}
 */
