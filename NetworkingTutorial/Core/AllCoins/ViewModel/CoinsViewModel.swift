//
//  CoinsViewModel.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/20/24.
//

import Foundation

class CoinsViewModel: ObservableObject {
    
    @Published var coins = [Coin]()
    @Published var errorMessage: String?
    
    private let service = CoinDataService()
    
    init() {
        fetchCoins()
    }
    
    // When inside an escaping block of code (completion handler in this case) you must use
    // self to refer to class level properties
    func fetchCoins() {
        // By default, when you create references to another object (self.coins for example) you
        // are creating a strong reference. Strong references don't deallocate. Weak references
        // deallocatre (and must be optional (self?.coins)) when the parent element does.
        service.fetchCoinsWithResult { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let coins):
                    self?.coins = coins
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
            }
        }
    }
}
