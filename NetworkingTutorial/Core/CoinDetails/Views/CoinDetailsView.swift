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
    
    init(coin: Coin, service: CoinServiceProtocol) {
        self.coin = coin
        self.viewModel = CoinDetailsViewModel(coinId: coin.id, service: service)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            if let details = viewModel.coinDetails {
                HStack {
                    ImageView(url: coin.image)
                        .frame(width: 64, height: 64)
                    
                    VStack(alignment: .leading) {
                        Text(details.name)
                            .fontWeight(.semibold)
                            .font(.subheadline)
                        
                        Text(details.symbol.uppercased())
                            .font(.footnote)
                    }
                }
                
                Text(details.description.text)
                    .font(.footnote)
                    .padding(.vertical)
                
                Spacer()
            }
            
        }
        .task {
            await viewModel.fetchCoinDetails()
        }
        .padding()
    }
}

//#Preview {
//    CoinDetailsView()
//}

