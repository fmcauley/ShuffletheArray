//
//  SingleRowKeyboardTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 10/5/20.
//

import XCTest
@testable import ShuffletheArray
class SingleRowKeyboardTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatSingleRowKeyboardIsNotNil() throws {
        let srkb = SingleRowKeyboard()
        XCTAssertNotNil(srkb)
    }
    
    func testThatCBAWillGenerateATimeOf4(){
        let srkb = SingleRowKeyboard()
        let keybaord = "abcdefghijklmnopqrstuvwxyz"
        let word = "cba"
        let output = srkb.calculateTime(keybaord,word)
        let expected = 4
        
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExample() {
        let srkb = SingleRowKeyboard()
        let keybaord = "pqrstuvwxyzabcdefghijklmno"
        let word = "leetcode"
        let output = srkb.calculateTime(keybaord,word)
        let expected = 73
        
        XCTAssertEqual(output, expected)
    }
}
