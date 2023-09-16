//
//  Constants.swift
//  GoodWeather
//
//  Created by sergio joel camacho zarco on 14/09/23.
//

import Foundation

struct Constants {
    static let apiK : String = "42cfc5a384ac9ce2b58b0dae887f0495"
    struct Urls {
        static func weatherByCity(city: String) -> URL? {
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=\(apiK)")
        }
        
        static func weatherUrlAsStringByIcon(icon: String) -> String {
            return "https://openweathermap.org/img/w/\(icon).png"
        }
    }
}
//https://api.openweathermap.org/data/2.5/weather?q=London&appid=42cfc5a384ac9ce2b58b0dae887f0495
