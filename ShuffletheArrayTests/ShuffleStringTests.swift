//
//  ShuffleStringTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 10/1/20.
//

import XCTest
@testable import ShuffletheArray

class ShuffleStringTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatShuffleStringIsNotNil() throws {
        let ss = ShuffleString()
        XCTAssertNotNil(ss)
    }
    
    func testThatGiveAnIndiceOf10AndStringOTTheOutputWillBeTO() {
        let ss = ShuffleString()
        let output = ss.restoreString("ot", [1,0])
        let expected = "to"
        XCTAssertEqual(output, expected)
    }
    
    func testThatGiveIndicesOf201AndStringTCAExpectCAT() {
        let ss = ShuffleString()
        let output = ss.restoreString("tca", [2,0,1])
        let expected = "cat"
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeEample() {
        let ss = ShuffleString()
        let output = ss.restoreString("codeleet", [4,5,6,7,0,2,1,3])
        let expected = "leetcode"
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExample2() {
        let ss = ShuffleString()
        let output = ss.restoreString("abc", [0,1,2])
        let expected = "abc"
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExample3() {
        let ss = ShuffleString()
        let output = ss.restoreString("aiohn", [3,1,4,2,0])
        let expected = "nihao"
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExample4() {
        let ss = ShuffleString()
        let output = ss.restoreString("aaiougrt", [4,0,2,6,7,3,1,5])
        let expected = "arigatou"
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExample5() {
        let ss = ShuffleString()
        let output = ss.restoreString("art", [1,0,2])
        let expected = "rat"
        XCTAssertEqual(output, expected)
    }

}
