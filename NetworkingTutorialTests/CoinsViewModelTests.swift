//
//  CoinsViewModelTests.swift
//  NetworkingTutorialTests
//
//  Created by Timothy Bryant on 4/24/24.
//

import XCTest
@testable import NetworkingTutorial

class CoinsViewModelTests: XCTestCase {
    
    func testInit() {
        let service = MockCoinService()
        let viewModel = CoinsViewModel(service: service)
        
        XCTAssertNotNil(viewModel, "The view model should not be nil")
    }
    
    func testSuccessfulCoinsFetch() async {
        let service = MockCoinService()
        let viewModel = CoinsViewModel(service: service)
        
        await viewModel.fetchCoins()
        
        XCTAssertTrue(viewModel.coins.count > 0) // ensures that coins array has coins
        XCTAssertEqual(viewModel.coins.count, 20) // ensures that all coins were decoded
        XCTAssertEqual(viewModel.coins, viewModel.coins.sorted(by: { $0.marketCapRank < $1.marketCapRank})) // ensures sorting order
    }
    
    func testCoinFetchWithInvalidJSON() async {
        let service = MockCoinService()
        service.mockData = mockCoins_invalidJSON
        let viewModel = CoinsViewModel(service: service)
        
        await viewModel.fetchCoins()
        XCTAssertTrue(viewModel.coins.isEmpty)
        XCTAssertNotNil(viewModel.errorMessage)
    }
    
    func testThrowsInvalidDataError() async {
        let service = MockCoinService()
        service.mockError = CoinAPIError.invalidData
        
        let viewModel = CoinsViewModel(service: service)
        
        await viewModel.fetchCoins()
        XCTAssertNotNil(viewModel.errorMessage)
        XCTAssertEqual(viewModel.errorMessage, CoinAPIError.invalidData.customDescription)
    }
    
    func testThrowsInvalidStatusCode() async {
        let service = MockCoinService()
        service.mockError = CoinAPIError.invalidStatusCode(statusCode: 404)
        
        let viewModel = CoinsViewModel(service: service)
        
        await viewModel.fetchCoins()
        XCTAssertNotNil(viewModel.errorMessage)
        XCTAssertEqual(viewModel.errorMessage, CoinAPIError.invalidStatusCode(statusCode: 404).customDescription)
    }
}
