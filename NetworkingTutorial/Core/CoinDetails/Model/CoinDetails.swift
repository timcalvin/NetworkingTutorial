//
//  CoinDetails.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/22/24.
//

// app.quicktype.io will take JSON and create a data model for you

import Foundation

struct CoinDetails: Codable {
    let id: String
    let symbol: String
    let name: String
    let description: Description
}

struct Description: Codable {
    let text: String
    
    enum CodingKeys: String, CodingKey {
        case text = "en"
    }
}
