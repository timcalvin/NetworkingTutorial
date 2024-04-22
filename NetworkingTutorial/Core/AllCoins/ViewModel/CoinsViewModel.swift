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
    @Published var errorMessage: String?
    
    init() {
        fetchPrice(coin: "gala")
    }
    
    func fetchPrice(coin: String) {
        // 1. Store URL as a string
        let urlString = "https://api.coingecko.com/api/v3/simple/price?&ids=\(coin)&vs_currencies=usd"
        
        // 2. Convert string to a URL object
        guard let url = URL(string: urlString) else {
            print("TCB: Failed to create URL Object")
            return
        }
        
        // 3. Send request and handle response
        URLSession.shared.dataTask(with: url) { data, response, error in
            // 4. Stop execution if an error is returned
            DispatchQueue.main.async {
                if let error {
                    print("TCB: Error fetching data: \(error.localizedDescription)")
                    self.errorMessage = error.localizedDescription
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse else {
                    self.errorMessage = "Bad HTTP Response"
                    return
                }
                
                guard httpResponse.statusCode == 200 else {
                    self.errorMessage = "Failed to fetch with status code \(httpResponse.statusCode)"
                    return
                }
                
                // 5. Create a JSON Object from the data response
                guard let data = data else {
                    print("TCB: Failed to unwrap data object")
                    return
                }
                
                // 6. Parse JSON Object
                guard let jsonObject = try? JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                    print("TCB: Failed to parse jsonObject")
                    return
                }
                guard let value = jsonObject[coin] as? [String: Double] else {
                    print("TCB: Failed to parse value")
                    return
                }
                guard let price = value["usd"] else {
                    print("TCB: Failed to assign price")
                    return
                }
                
                self.coin = coin.capitalized
                self.price = "$\(price)"
            }
        }.resume()
        
//        print("TCB: Did reach end of function...") // 2
    }
    
}
