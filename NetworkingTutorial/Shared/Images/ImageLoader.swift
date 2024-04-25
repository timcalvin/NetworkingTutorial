//
//  ImageLoader.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/25/24.
//

import SwiftUI

class ImageLoader: ObservableObject {
    @Published var image: Image?
    
    private let urlString: String
    
    init(url: String) {
        self.urlString = url
        Task { await loadImage() }
    }
    
    @MainActor
    private func loadImage() async {
        if let cached = ImageCache.shared.get(forKey: urlString) {
            self.image = Image(uiImage: cached)
            return
        }
        
        guard let url = URL(string: urlString) else { return }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let uiImage = UIImage(data: data) else { return }
            ImageCache.shared.set(uiImage, forKey: urlString)
            self.image = Image(uiImage: uiImage)
        } catch {
            print("TCB: Failed to fetch image with error \(error)")
        }
    }
}
