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
//        print("TCB: Fetching price...") // 1
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                print("TCB: Error fetching data: \(error?.localizedDescription ?? "")")
                return
            }
            
//            print("Did receive data \(data)") // 3
            
            // 4. Create a JSON Object from the data response
            guard let data = data else {
                print("TCB: Failed to unwrap data object")
                return
            }
            
            // 5. Parse JSON Object
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
            
            DispatchQueue.main.async {
                self.coin = coin.capitalized
                self.price = "$\(price)"
            }
            
        }.resume()
        
//        print("TCB: Did reach end of function...") // 2
    }
    
}
