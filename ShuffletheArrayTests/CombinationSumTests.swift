//
//  CombinationSumTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 10/2/20.
//

import XCTest
@testable import ShuffletheArray
class CombinationSumTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatCombinationSumIsNotNil() throws {
        let cs = CombinationSum()
        XCTAssertNotNil(cs)
    }

}
