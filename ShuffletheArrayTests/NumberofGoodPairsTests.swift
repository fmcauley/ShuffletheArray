//
//  NumberofGoodPairsTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 9/30/20.
//

import XCTest
@testable import ShuffletheArray
class NumberofGoodPairsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatNumberOfPairsIsNotNil() throws {
        let nop = NumberOfPairs()
        XCTAssertNotNil(nop)
    }
    
    func testThatGiveAnArrayOfTwoElementsWithTheSameValueTheReusltIsOnePair() {
        let nop = NumberOfPairs()
        let input = [1,1]
        let output = nop.numIdenticalPairs(input)
        let expected = 1
        XCTAssertEqual(output, expected)
    }
    
    func testThatGiveAnArrayOfThreeElementsWithTheSameValueTheReusltIsTwoPair() {
        let nop = NumberOfPairs()
        let input = [1,1,1]
        let output = nop.numIdenticalPairs(input)
        let expected = 3
        XCTAssertEqual(output, expected)
    }
    
    func testleetcodeExample1() {
        let nop = NumberOfPairs()
        let input = [1,2,3,1,1,3]
        let output = nop.numIdenticalPairs(input)
        let expected = 4
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExampleTwo() {
        let nop = NumberOfPairs()
        let input = [1,1,1,1]
        let output = nop.numIdenticalPairs(input)
        let expected = 6
        XCTAssertEqual(output, expected)
    }
    
    func testThatLeepCodeExampleThreeIsZero() {
        let nop = NumberOfPairs()
        let input = [1,2,3]
        let output = nop.numIdenticalPairs(input)
        let expected = 0
        XCTAssertEqual(output, expected)
    }

}
