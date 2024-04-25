//
//  MockCoinService.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/24/24.
//

import Foundation

class MockCoinService: CoinServiceProtocol {
    
    var mockData: Data?
    var mockError: CoinAPIError?
    
    func fetchCoins() async throws -> [Coin] {
        if let mockError { throw mockError }
        
        do {
            let coins = try JSONDecoder().decode([Coin].self, from: mockData ?? mockCoinData_marketCapDesc)
            return coins
        } catch {
            throw error as? CoinAPIError ?? .unknownError(error: error)
        }
    }
    
    func fetchCoinDetails(id: String) async throws -> CoinDetails? {
        let description = Description(text: "Test description")
        let bitcoinDetails = CoinDetails(id: "bitcoin", symbol: "btc", name: "Bitcoin", description: description)
        return bitcoinDetails
    }
    
    
}
