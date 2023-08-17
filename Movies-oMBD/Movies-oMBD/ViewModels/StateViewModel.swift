//
//  StateViewModel.swift
//  Movies-oMBD
//
//  Created by sergio joel camacho zarco on 16/08/23.
//

import Foundation

enum LoadingState{
    case loading, success, failed, none
}

class StateViewModel : ObservableObject{
    @Published var loadingState : LoadingState = .none
}
