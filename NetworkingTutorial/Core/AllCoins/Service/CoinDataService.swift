//
//  CoinDataService.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/22/24.
//

import Foundation

class CoinDataService: HTTPDataDownloader {
    func fetchCoins() async throws -> [Coin] {
        let coinsUrlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=20&page=1&sparkline=false&price_change_percentage=24h&locale=en"
        return try await fetchData(as: [Coin].self, endpoint: coinsUrlString)
    }
    
    func fetchCoinDetails(id: String) async throws -> CoinDetails? {
        let detailsUrlString = "https://api.coingecko.com/api/v3/coins/\(id)?localization=false"
        return try await fetchData(as: CoinDetails.self, endpoint: detailsUrlString)
    }
}
