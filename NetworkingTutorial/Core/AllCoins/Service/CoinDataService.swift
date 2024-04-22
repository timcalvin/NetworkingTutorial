//
//  CoinDataService.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/22/24.
//

import Foundation

class CoinDataService {
    private let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=20&page=1&sparkline=false&price_change_percentage=24h&locale=en"
    
    func fetchCoins() async throws -> [Coin] {
        guard let url = URL(string: urlString) else { return [] }
        
        // Check for data
        let (data, response) = try await URLSession.shared.data(from: url)
        
        // Check HTTP response
        guard let httpResponse = response as? HTTPURLResponse else {
            throw CoinAPIError.requestFailed(description: "Request Failed")
        }
        
        guard httpResponse.statusCode == 200 else {
            throw CoinAPIError.invalidStatusCode(statusCode: httpResponse.statusCode)
        }
        
        do {
            let coins = try JSONDecoder().decode([Coin].self, from: data)
            return coins
        } catch {
            print("TCB: Error \(error)")
            throw error as? CoinAPIError ?? .unknownError(error: error)
        }
    }
}

// MARK: - Completion Handlers

extension CoinDataService {
    func fetchCoinsWithResult(completion: @escaping(Result<[Coin], CoinAPIError>) -> Void) {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            // Check for errors
            if let error {
                completion(.failure(.unknownError(error: error)))
                return
            }
            
            // Check HTTP response
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(.failure(.requestFailed(description: "Request failed")))
                return
            }
            
            guard httpResponse.statusCode == 200 else {
                completion(.failure(.invalidStatusCode(statusCode: httpResponse.statusCode)))
                return
            }
            
            // Check for data
            guard let data = data else {
                completion(.failure((.invalidData)))
                return
            }
            
            // Parse data
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                completion(.success(coins))
            } catch {
                print("TCB: Failed to decode with error \(error)")
                completion(.failure(.jsonParsingFailure))
            }
        }.resume()
    }
}
