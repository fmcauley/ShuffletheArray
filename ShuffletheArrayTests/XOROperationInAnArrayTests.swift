//
//  XOROperationInAnArrayTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 10/6/20.
//

import XCTest
@testable import ShuffletheArray

class XOROperationInAnArrayTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatXOROperationInAnArrayIsNotNi() throws {
        let xor = XOROperationInAnArray()
        XCTAssertNotNil(xor)
    }

    func testThatGivenAStartOf0AndNOf5Return8() {
        let xor = XOROperationInAnArray()
        let n = 5
        let start = 0
        let output = xor.xorOperation(n,start)
        let expected = 8
        
        XCTAssertEqual(output, expected)
    }
    
    
    func testLeetCodeTest2() {
        let xor = XOROperationInAnArray()
        let n = 4
        let start = 3
        let output = xor.xorOperation(n,start)
        let expected = 8
        
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExampleThree() {
        let xor = XOROperationInAnArray()
        let n = 1
        let start = 7
        let output = xor.xorOperation(n,start)
        let expected = 7
        
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExampleFour() {
        let xor = XOROperationInAnArray()
        let n = 10
        let start = 5
        let output = xor.xorOperation(n,start)
        let expected = 2
        
        XCTAssertEqual(output, expected)
    }
   

}
