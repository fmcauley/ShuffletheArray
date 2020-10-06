//
//  CreateTargetArrayTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 10/5/20.
//

import XCTest
@testable import ShuffletheArray
class CreateTargetArrayTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatCreateTargetArrayIsNotNil() throws {
        let cta = CreateTargetArray()
        XCTAssertNotNil(cta)
    }
    
    func testThatAListWithZeronAndIndexZeroWillReturnAnArrayContainingZero() {
        let cta = CreateTargetArray()
        let nums = [0]
        let index = [0]
        let output = cta.createTargetArray(nums,index)
        let expected = [0]
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatGivenNumbersZeroAndOneWithIndexValuesOfOneAndZeroTheOutputArrayIsOneZero() {
        let cta = CreateTargetArray()
        let nums = [0,1]
        let index = [1,0]
        let output = cta.createTargetArray(nums,index)
        let expected = [1,0]
        
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExampleOne() {
        let cta = CreateTargetArray()
        let nums = [0,1,2,3,4]
        let index = [0,1,2,2,1]
        let output = cta.createTargetArray(nums,index)
        let expected = [0,4,1,3,2]
        
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExampleTwo() {
        let cta = CreateTargetArray()
        let nums = [1,2,3,4,0]
        let index = [0,1,2,3,0]
        let output = cta.createTargetArray(nums,index)
        let expected = [0,1,2,3,4]
        
        XCTAssertEqual(output, expected)
    }

}
