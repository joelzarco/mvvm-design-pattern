//
//  Date+Extensions.swift
//  GoodWeather
//
//  Created by sergio joel camacho zarco on 14/09/23.
//

import Foundation

extension Date {
    
    func formatAsString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        return formatter.string(from: self)
    }
    
}
