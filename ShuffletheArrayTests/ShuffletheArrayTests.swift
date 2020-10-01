//
//  ShuffletheArrayTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 9/30/20.
//

import XCTest
@testable import ShuffletheArray

class ShuffletheArrayTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatShuffleTheArrayIsNotNil() throws {
        let sta = ShuffletheArray()
        XCTAssertNotNil(sta)
    }
    
    func testThatGiveAnArrayOf1122TheOutputWillBe1212WithAFactorOf2() {
        let sta = ShuffletheArray()
        let input = [1,1,2,2]
        let factor = 2
        let output = sta.shuffle(input,factor)
        let expected = [1,2,1,2]
        
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeInput1() {
        let sta = ShuffletheArray()
        let intput = [2,5,1,3,4,7]
        let factor = 3
        let output = sta.shuffle(intput,factor)
        let expected = [2,3,5,4,1,7]
        
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeInput2() {
        let sta = ShuffletheArray()
        let intput = [1,2,3,4,4,3,2,1]
        let factor = 4
        let output = sta.shuffle(intput,factor)
        let expected = [1,4,2,3,3,2,4,1]
        
        XCTAssertEqual(output, expected)
    }

}
