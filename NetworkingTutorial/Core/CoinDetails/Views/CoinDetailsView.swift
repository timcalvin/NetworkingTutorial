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
        if let details = viewModel.coinDetails {
            VStack(alignment: .leading) {
                Text(details.name)
                    .fontWeight(.semibold)
                    .font(.subheadline)
                
                Text(details.symbol.uppercased())
                    .font(.footnote)
                
                Text(details.description.text)
                    .font(.footnote)
                    .padding(.vertical)
            }
            .padding()
        }
    }
}

//#Preview {
//    CoinDetailsView()
//}
