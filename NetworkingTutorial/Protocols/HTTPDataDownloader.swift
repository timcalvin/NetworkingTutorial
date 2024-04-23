//
//  HTTPDataDownloader.swift
//  NetworkingTutorial
//
//  Created by Timothy Bryant on 4/23/24.
//

import Foundation

protocol HTTPDataDownloader {
    func fetchData<T: Decodable>(as type: T.Type, endpoint: String) async throws -> T
}

extension HTTPDataDownloader {
    // Create the function in an extension of the protocol so we don't need to implement the function
    // individually when conforming to the protocol.
    func fetchData<T: Decodable>(as type: T.Type, endpoint: String) async throws -> T {
        guard let url = URL(string: endpoint) else {
            throw CoinAPIError.requestFailed(description: "Invalid URL")
        }
        
        // Check for data
        let (data, response) = try await URLSession.shared.data(from: url)
        
        // Check HTTP response
        guard let httpResponse = response as? HTTPURLResponse else {
            throw CoinAPIError.requestFailed(description: "Request Failed")
        }
        
        guard httpResponse.statusCode == 200 else {
            throw CoinAPIError.invalidStatusCode(statusCode: httpResponse.statusCode)
        }
        
        do {
            return try JSONDecoder().decode(type, from: data)
        } catch {
            print("TCB: Error \(error)")
            throw error as? CoinAPIError ?? .unknownError(error: error)
        }
    }
}
