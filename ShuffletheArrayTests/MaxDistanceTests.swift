//
//  MaxDistanceTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 10/1/20.
//

import XCTest
@testable import ShuffletheArray

class MaxDistanceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatMaxDistanceIsNotNil() throws {
        let md = MaxDistance()
        XCTAssertNotNil(md)
    }
    
    
    func testThatMaxDistanceCanFindTheValueOneGiveTwoArraysOf1And3() {
        let md = MaxDistance()
        let output = md.maxDistance([[1,5],[3,4]])
        let expected = 3
        
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeSampleQuestion() {
        let md = MaxDistance()
        let output = md.maxDistance([[1,2,3],
                                     [4,5],
                                     [1,2,3]])
        let expected = 4
        
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeFailedTest() {
        let md = MaxDistance()
        let output = md.maxDistance([[1,4],[0,5]])
        let expected = 4
        
        XCTAssertEqual(output, expected)
    }
    
    
    func testLeetCodeFailTest2() {
        let md = MaxDistance()
        let output = md.maxDistance([[-8,-7,-7,-5,1,1,3,4],[-2],[-10,-10,-7,0,1,3],[2]])
        let expected = 14
        XCTAssertEqual(output, expected)
    }
    
    

}
