//
//  SortArrayTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 10/23/20.
//

import XCTest
@testable import ShuffletheArray

class SortArrayTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSortArrayIsNotNil() throws {
        let sa = SortArray()
        XCTAssertNotNil(sa)
    }
    
    func testThatSortArrayWillReturnAnArrayOf21WhenGivenAnInputOf21(){
        let input = [2,1]
        let sb = SortArray()
        let output = sb.sortArrayByParity(input)
        let expected = [2,1]
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatLeetCodeTestWillPass() {
        let input = [3,1,2,4]
        let sb = SortArray()
        let output = sb.sortArrayByParity(input)
        let expected = [4,2,1,3]
        
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeFailedTest() {
        let input = [0,1,2]
        let sb = SortArray()
        let output = sb.sortArrayByParity(input)
        let expected = [0,2,1]
        
        XCTAssertEqual(output, expected)
    }
}
