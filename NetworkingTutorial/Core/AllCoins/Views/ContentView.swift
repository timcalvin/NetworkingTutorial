//
//  ContentView.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/20/24.
//

import SwiftUI

struct ContentView: View {
    private let service: CoinServiceProtocol
    
    // VM: Fetch data from API and supply view with the data
    @StateObject var viewModel: CoinsViewModel
    
    init(service: CoinServiceProtocol) {
        self.service = service
        self._viewModel = StateObject(wrappedValue: CoinsViewModel(service: service))
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.coins) { coin in
                    NavigationLink(value: coin) {
                        HStack(spacing: 12) {
                            Text("\(coin.marketCapRank)")
                                .foregroundStyle(.gray)
                            
                            AsyncImage(url: URL(string: coin.image)) { image in
                                image
                                    .resizable()
                                    .frame(width: 32, height: 32)
                            } placeholder: {
                                EmptyView()
                            }
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text(coin.name)
                                    .fontWeight(.semibold)
                                Text(coin.symbol.uppercased())
                            }
                        }
                        .onAppear {
                            if coin == viewModel.coins.last {
                                Task { await viewModel.fetchCoins() }
                            }
                        }
                        .font(.footnote)
                    }
                }
            }
            .navigationDestination(for: Coin.self) { coin in
                CoinDetailsView(coin: coin, service: service)
            }
            .overlay {
                if let error = viewModel.errorMessage {
                    Text(error)
                }
            }
        }
        .task {
            // By adding this to the navigation stack this task does not get called
            // every time the user enters the detail view and hits the back button
            await viewModel.fetchCoins()
        }
    }
}

#Preview {
    ContentView(service: MockCoinService())
}

