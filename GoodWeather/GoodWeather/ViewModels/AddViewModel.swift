//
//  AddViewModel.swift
//  GoodWeather
//
//  Created by sergio joel camacho zarco on 18/09/23.
//

import Foundation

class AddViewModel : ObservableObject{
    var city : String = ""
    
    func save(completion: @escaping (WeatherViewModel) -> Void){
        Webservice().getWeatherByCity(city: city) { result in
            switch result {
            case .success(let success):
                DispatchQueue.main.sync {
                    completion(WeatherViewModel(weather: success))
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
