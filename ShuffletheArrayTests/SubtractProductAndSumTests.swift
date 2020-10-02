//
//  SubtractProductAndSumTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 10/2/20.
//

import XCTest
@testable import ShuffletheArray

class SubtractProductAndSumTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatSubtractProductAndSumIsNotNil() throws {
        let sps = SubtractProductAndSum()
        XCTAssertNotNil(sps)
    }
    
    func testThatSubtractProductAndSumWillReutrnZeronWhengivenZero() {
        let sps = SubtractProductAndSum()
        let output = sps.subtractProductAndSum(0)
        let expected = 0
        XCTAssertEqual(output, expected)
    }
    
    
    func testThatSubtractProductAndSumWillReutrnOneWhengivenEleven() {
        let sps = SubtractProductAndSum()
        let output = sps.subtractProductAndSum(11)
        let expected = -1
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExample1() {
        let sps = SubtractProductAndSum()
        let output = sps.subtractProductAndSum(234)
        let expected = 15
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExample2() {
        let sps = SubtractProductAndSum()
        let output = sps.subtractProductAndSum(4421)
        let expected = 21
        XCTAssertEqual(output, expected)
    }

}
