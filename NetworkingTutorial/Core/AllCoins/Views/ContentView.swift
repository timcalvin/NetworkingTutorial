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
        Text("\(viewModel.coin): \(viewModel.price)")
        .padding()
    }
}

#Preview {
    ContentView()
}
