//
//  CoinsViewModel.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/20/24.
//

import Foundation

class CoinsViewModel: ObservableObject {
    
    @Published var coin = ""
    @Published var price = ""
    
    init() {
        // 1. Store URL as a string
        let urlString = "https://pro-api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd"
        
        // 2. Convert string to a URL object
        guard let url = URL(string: urlString) else { return }
        
        // 3. Send request and handle response
        print("TCB: Fetching price...")
        URLSession.shared.dataTask(with: url) { data, response, error in
            print("Did receive data \(data)")
        }.resume()
        
        print("TCB: Did reach end of function...")
    }
    
    func fetchPrice() {
        self.coin = "Bitcoin"
        self.price = "$30,000"
    }
    
}
