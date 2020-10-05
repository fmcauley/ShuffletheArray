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
    
    func testThatGiveAListWithASingleValueTheReTurnSetIsThatValue() {
        let cs = CombinationSum()
        let output = cs.combinationSum([7],7)
        let expected = [[7]]
        XCTAssertEqual(output, expected)
    }
    
    func testThatGivenAnInputListContainingOneWithTargetTwoExpectOneOne() {
        let cs = CombinationSum()
        let output = cs.combinationSum([1],2)
        let expected = [[1,1]]
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExampleTwo() {
        let cs = CombinationSum()
        let output = cs.combinationSum([2],1)
        let expected = [[0]]
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExampleOne() {
        let cs = CombinationSum()
        let output = cs.combinationSum([2,3,6,7],7)
        let expected = [[2,2,3],[7]]
        XCTAssertEqual(output, expected)
    }

}
