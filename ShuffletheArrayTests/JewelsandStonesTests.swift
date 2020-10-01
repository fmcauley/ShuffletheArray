//
//  JewelsandStonesTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 9/30/20.
//

import XCTest
@testable import ShuffletheArray

class JewelsandStonesTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatJewelsAndStonesAreNotNil() throws {
        let jas = JewelsandStones()
        XCTAssertNotNil(jas)
    }

    func testThatGiveAnJewelAndAStoneThatMatchTheOutputWillOne() {
        let jas = JewelsandStones()
        let output = jas.numJewelsInStones("a","a")
        let expected = 1
        XCTAssertEqual(output, expected)
    }
    
    func testThatGiveTwoJewelAndThreeStoneThatMatchTheOutputWillTwo() {
        let jas = JewelsandStones()
        let output = jas.numJewelsInStones("ab","abc")
        let expected = 2
        XCTAssertEqual(output, expected)
    }
    
    func testThatLeetCodeExampleWillWork() {
        let jas = JewelsandStones()
        let output = jas.numJewelsInStones("aA","aAAbbbb")
        let expected = 3
        XCTAssertEqual(output, expected)
    }
    
    func testThatNextLeetCodeExampleWillWork() {
        let jas = JewelsandStones()
        let output = jas.numJewelsInStones("aA","bDgfhgj")
        let expected = 0
        XCTAssertEqual(output, expected)
    }

}
