//
//  MaxNestingDepthTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 10/13/20.
//

import XCTest
@testable import ShuffletheArray

class MaxNestingDepthTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatMaxNestingDepthIsNotNil() throws {
        let mnd = MaxNestingDepth()
        XCTAssertNotNil(mnd)
    }
    
    func testThatAnEmptyStringWillReturnZero() {
        let mnd = MaxNestingDepth()
        let output = mnd.maxDepth("")
        let expected = 0
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatAValidStringIsASingleCharNotEqualToRightOrLeftParn() {
        let mnd = MaxNestingDepth()
        let output = mnd.maxDepth("x")
        let expected = 0
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatAPairOfLeftAndRightParensReturnsOne() {
        let mnd = MaxNestingDepth()
        let output = mnd.maxDepth("()")
        let expected = 1
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatMaxDepthOfTwoIsReturned() {
        let mnd = MaxNestingDepth()
        let output = mnd.maxDepth("((x))")
        let expected = 2
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatAMoreComplicatedCombonationWorks() {
        let mnd = MaxNestingDepth()
        let output = mnd.maxDepth("(2((3))+)")
        let expected = 3
        
        XCTAssertEqual(output, expected)
    }
    
    func testWillFailingCase() {
        let mnd = MaxNestingDepth()
        let output = mnd.maxDepth("(1+(2*3)+((8)/4))+1")
        let expected = 3
        
        XCTAssertEqual(output, expected)
    }
    
    // failed test set: "(1+(2*3)+((8)/4))+1"
    //expected 3
    //output 4

}
