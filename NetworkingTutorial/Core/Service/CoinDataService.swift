//
//  CoinDataService.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/22/24.
//

import Foundation

protocol CoinServiceProtocol {
    func fetchCoins() async throws -> [Coin]
    func fetchCoinDetails(id: String) async throws -> CoinDetails?
}

class CoinDataService: CoinServiceProtocol, HTTPDataDownloader {
    
    func fetchCoins() async throws -> [Coin] {
        guard let endpoint = allCoinsURLString else {
            throw CoinAPIError.requestFailed(description: "Invalid endpoint")
        }
        
        return try await fetchData(as: [Coin].self, endpoint: endpoint)
    }
    
    func fetchCoinDetails(id: String) async throws -> CoinDetails? {
        if let cached = CoinDetailsCache.shared.get(forKey: id) {
            print("TCB: Got details from cache")
            return cached
        }
        
        guard let endpoint = coinDetailsURLString(id: id) else {
            throw CoinAPIError.requestFailed(description: "Invalid endpoint")
        }
        
        let details = try await fetchData(as: CoinDetails.self, endpoint: endpoint)
        print("TCB: Got details from API")
        CoinDetailsCache.shared.set(details, forKey: id)
        
        return details
    }
    
    // MARK: - Helpers
    private var baseURLComponents: URLComponents {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.coingecko.com"
        components.path = "/api/v3/coins/"
        
        return components
    }
    
    private var allCoinsURLString: String? {
        var components = baseURLComponents
        components.path += "markets"
        
        // You can add filtering and enums here to make this more robust
        components.queryItems = [
            .init(name: "vs_currency", value: "usd"),
            .init(name: "order", value: "market_cap_desc"),
            .init(name: "per_page", value: "20"),
            .init(name: "page", value: "1"),
            .init(name: "sparkline", value: "false"),
            .init(name: "price_change_percentage", value: "24"),
            .init(name: "locale", value: "en")
        ]
        
        return components.url?.absoluteString
    }
    
    // This one is a function because the id needs to be passed in
    private func coinDetailsURLString(id: String) -> String? {
        var components = baseURLComponents
        components.path += "\(id)"
        
        components.queryItems = [
            .init(name: "localization", value: "false")
        ]
        
        return components.url?.absoluteString
    }
}
