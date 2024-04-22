//
//  CoinDataService.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/22/24.
//

import Foundation

class CoinDataService {
    private let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=20&page=1&sparkline=false&price_change_percentage=24h&locale=en"
    
    func fetchCoinsWithResult(completion: @escaping(Result<[Coin], Error>) -> Void) {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else { return }
            
            guard let coins = try? JSONDecoder().decode([Coin].self, from: data) else {
                print("TCB: Failed to decode coins")
                return
            }
            
            completion(.success(coins))
        }.resume()
    }
    
    // OLD WAY OF DOING THINGS

    func fetchCoins(completion: @escaping([Coin]?, Error?) -> Void) {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error {
                completion(nil, error)
                return
            }
            
            guard let data = data else { return }
            
            guard let coins = try? JSONDecoder().decode([Coin].self, from: data) else {
                print("TCB: Failed to decode coins")
                return
            }
            
            completion(coins, nil)
        }.resume()
    }

    
    func fetchPrice(coin: String, completion: @escaping(Double) -> Void) {
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
            if let error {
                print("TCB: Error fetching data: \(error.localizedDescription)")
                //                    self.errorMessage = error.localizedDescription
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                //                    self.errorMessage = "Bad HTTP Response"
                return
            }
            
            guard httpResponse.statusCode == 200 else {
                //                    self.errorMessage = "Failed to fetch with status code \(httpResponse.statusCode)"
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

            completion(price)
        }.resume()
        
        //        print("TCB: Did reach end of function...") // 2
    }
}

