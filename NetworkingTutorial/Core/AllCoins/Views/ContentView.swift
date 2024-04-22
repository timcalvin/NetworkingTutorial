//
//  ContentView.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/20/24.
//

import SwiftUI

struct ContentView: View {
    // VM: Fetch data from API and supply view with the data
    @StateObject var viewModel = CoinsViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.coins) { coin in
                    NavigationLink(value: coin) {
                        HStack(spacing: 12) {
                            Text("\(coin.marketCapRank)")
                                .foregroundStyle(.gray)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text(coin.name)
                                    .fontWeight(.semibold)
                                Text(coin.symbol.uppercased())
                            }
                        }
                        .font(.footnote)
                    }
                }
            }
            .navigationDestination(for: Coin.self) { coin in
                CoinDetailsView(coin: coin)
            }
            .overlay {
                if let error = viewModel.errorMessage {
                    Text(error)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

