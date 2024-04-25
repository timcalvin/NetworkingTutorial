//
//  NetworkingTutorialTests.swift
//  NetworkingTutorialTests
//
//  Created by Timothy Bryant on 4/24/24.
//

import XCTest
@testable import NetworkingTutorial

final class NetworkingTutorialTests: XCTestCase {

    func test_decodeCoinsIntoArray_marketCapDesc() throws {
        do {
            let coins = try JSONDecoder().decode([Coin].self, from: mockCoinData_marketCapDesc)
            XCTAssertTrue(coins.count > 0) // ensures that coins array has coins
            XCTAssertEqual(coins.count, 20) // ensures that all coins were decoded
            XCTAssertEqual(coins, coins.sorted(by: { $0.marketCapRank < $1.marketCapRank})) // ensures sorting order
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

}
