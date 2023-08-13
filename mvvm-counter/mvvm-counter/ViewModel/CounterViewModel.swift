//
//  CounterViewModel.swift
//  mvvm-counter
//
//  Created by sergio joel camacho zarco on 13/08/23.
//

import Foundation
import SwiftUI

class CounterViewModel : ObservableObject{
    
    @Published private var counter : Counter = Counter()
    
    var value : Int{
        counter.value
    }
    
    var premium : Bool{
        counter.isPremium
    }
    
    func increment(){
        counter.increment()
    }
}
