//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by sergio joel camacho zarco on 14/09/23.
//

import Foundation

extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
    
}
