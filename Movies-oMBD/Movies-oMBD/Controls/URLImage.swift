//
//  URLImage.swift
//  Movies-oMBD
//
//  Created by sergio joel camacho zarco on 14/08/23.
//

import SwiftUI

struct URLImage: View {
    
    let url: String
    let placeholder: String
    
    @ObservedObject var imageLoader = ImageLoader()
    
    init(url: String, placeholder: String = "placeholder") {
        self.url = url
        self.placeholder = placeholder
        self.imageLoader.downloadImage(url: self.url)
    }
    
    var body: some View {
      
        if let data = self.imageLoader.downloadedData {
            return Image(uiImage: UIImage(data: data)!).resizable() // error here, nil found!!!
        } else {
            return Image("placeholder").resizable()
        }
    }
}
