//
//  ImageView.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/25/24.
//

import SwiftUI

struct ImageView: View {
    @ObservedObject var imageLoader: ImageLoader
    
    init(url: String) {
        imageLoader = ImageLoader(url: url)
    }
    
    var body: some View {
        if let image = imageLoader.image {
            image
                .resizable()
        }
    }
}

#Preview {
    ImageView(url: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400")
}
