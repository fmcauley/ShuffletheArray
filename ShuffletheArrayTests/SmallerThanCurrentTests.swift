//
//  SmallerThanCurrentTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 10/1/20.
//

import XCTest
@testable import ShuffletheArray

class SmallerThanCurrentTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatSmallerThanCurrentIsNotNil() throws {
        let stc = SmallerThanCurrent()
        XCTAssertNotNil(stc)
    }
    
    func testThatGiveAnArrayOf3and2TheOutputWillBe1and0() {
        let stc = SmallerThanCurrent()
        let output = stc.smallerNumbersThanCurrent([3,2])
        let expected = [1,0]
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatGivenAnArrayOf3And2And1TheOutputWillbeTwoOneZero() {
        let stc = SmallerThanCurrent()
        let output = stc.smallerNumbersThanCurrent([3,2,1])
        let expected = [2,1,0]
        
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExample1() {
        let stc = SmallerThanCurrent()
        let output = stc.smallerNumbersThanCurrent([8,1,2,2,3])
        let expected = [4,0,1,1,3]
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatLeetCodeExample2Works() {
        let stc = SmallerThanCurrent()
        let output = stc.smallerNumbersThanCurrent([6,5,4,8])
        let expected = [2,1,0,3]
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatGiveAllTheSameInputTheOutputWillBeAllZeros() {
        let stc = SmallerThanCurrent()
        let output = stc.smallerNumbersThanCurrent([7,7,7,7])
        let expected = [0,0,0,0]
        
        XCTAssertEqual(output, expected)
    }

}
