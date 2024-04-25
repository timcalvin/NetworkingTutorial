//
//  NetworkingTutorialApp.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/20/24.
//

import SwiftUI

@main
struct NetworkingTutorialApp: App {
    var body: some Scene {
        WindowGroup {
            // NOTE: - This can also be accomplished with an environment object
//            ContentView(service: CoinDataService())
            ContentView(service: MockCoinService())
        }
    }
}
