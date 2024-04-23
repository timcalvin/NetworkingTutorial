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
            ContentView(service: CoinDataService())
        }
    }
}
