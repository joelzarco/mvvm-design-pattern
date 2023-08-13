//
//  Counter.swift
//  mvvm-counter
//
//  Created by sergio joel camacho zarco on 13/08/23.
//

import Foundation

struct Counter{
    
    var value : Int = 0
    var isPremium : Bool = false
    
    // bussines login in model :(
    mutating func increment(){
        value += 1
        if value.isMultiple(of: 3){
            // premium
            isPremium = true
        }else{
            //not premium
            isPremium = false
        }
    }
}
