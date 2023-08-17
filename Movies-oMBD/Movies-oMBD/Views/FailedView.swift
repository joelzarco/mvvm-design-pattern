//
//  FailedView.swift
//  Movies-oMBD
//
//  Created by sergio joel camacho zarco on 16/08/23.
//

import Foundation
import SwiftUI

struct FailedView : View{
    var body : some View{
        VStack(alignment: .center){
            Image(systemName: "exclamationmark.triangle.fill")
                .resizable()
                .foregroundColor(.primary)
                .scaledToFit()
                .frame(maxWidth: 100, maxHeight: 100)
            Text("No results :(")
                .font(.title)
                .foregroundColor(.primary)
        }
        .padding()
    }
}
