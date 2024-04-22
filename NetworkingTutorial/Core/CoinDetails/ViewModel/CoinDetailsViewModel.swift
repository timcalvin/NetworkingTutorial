//
//  CoinDetailsViewModel.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/22/24.
//

import Foundation

class CoinDetailsViewModel: ObservableObject {
    
    private let service = CoinDataService()
    private let coinId: String
    
    init(coinId: String) {
        self.coinId = coinId
        
        Task { await fetchCoinDetails() }
    }
    
    func fetchCoinDetails() async {
        do {
            let details = try await service.fetchCoinDetails(id: coinId)
            print("TCB: Details \(details)")
        } catch {
            print("TCB: Error: \(error.localizedDescription)")
        }
    }
}
