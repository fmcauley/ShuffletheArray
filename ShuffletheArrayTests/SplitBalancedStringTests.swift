//
//  SplitBalancedStringTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 10/7/20.
//

import XCTest
@testable import ShuffletheArray

class SplitBalancedStringTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatSplitBalancedStringIsNotNil() throws {
        let sbs = SplitBalancedString()
        XCTAssertNotNil(sbs)
    }
    
    func testThatTheStringRLWillReturnOne() {
        let sbs = SplitBalancedString()
        let inputString = "RL"
        let output = sbs.balancedStringSplit(inputString)
        let expected = 1
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatStringWithRLRLWillReturnTwo() {
        let sbs = SplitBalancedString()
        let inputString = "RLRL"
        let output = sbs.balancedStringSplit(inputString)
        let expected = 2
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatStirngWithRRLLWillReturnOne() {
        let sbs = SplitBalancedString()
        let inputString = "RRLL"
        let output = sbs.balancedStringSplit(inputString)
        let expected = 1
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatStringWithRLRRLLReturnsTwo() {
        let sbs = SplitBalancedString()
        let inputString = "RLRRLL"
        let output = sbs.balancedStringSplit(inputString)
        let expected = 2
        
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExamples(){
        let sbs = SplitBalancedString()
        let inputString = "RLRRLLRLRL"
        let output = sbs.balancedStringSplit(inputString)
        let expected = 4
        
        XCTAssertEqual(output, expected)
    }
    
    func testMoreLeetCodeExamples() {
        let sbs = SplitBalancedString()
        let inputString = "RLLLLRRRLR"
        let output = sbs.balancedStringSplit(inputString)
        let expected = 3
        
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExample3() {
        let sbs = SplitBalancedString()
        let inputString = "LLLLRRRR"
        let output = sbs.balancedStringSplit(inputString)
        let expected = 1
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatTheLastOneWorks() {
        let sbs = SplitBalancedString()
        let inputString = "RLRRRLLRLL"
        let output = sbs.balancedStringSplit(inputString)
        let expected = 2
        
        XCTAssertEqual(output, expected)
    }
}
