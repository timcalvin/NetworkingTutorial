//
//  CoinDetailsView.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/22/24.
//

import SwiftUI

struct CoinDetailsView: View {
    let coin: Coin
    @ObservedObject var viewModel: CoinDetailsViewModel
    
    init(coin: Coin) {
        self.coin = coin
        self.viewModel = CoinDetailsViewModel(coinId: coin.id)
    }
    
    var body: some View {
        Text(coin.name)
    }
}

//#Preview {
//    CoinDetailsView()
//}
