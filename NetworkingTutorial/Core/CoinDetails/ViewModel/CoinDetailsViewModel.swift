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
    
    @Published var coinDetails: CoinDetails?
    
    init(coinId: String) {
        self.coinId = coinId
        
        Task { await fetchCoinDetails() }
    }
    
    @MainActor
    func fetchCoinDetails() async {       
        do {
            let details = try await service.fetchCoinDetails(id: coinId)
            self.coinDetails = details
        } catch {
            print("TCB: Error: \(error.localizedDescription)")
        }
    }
}
