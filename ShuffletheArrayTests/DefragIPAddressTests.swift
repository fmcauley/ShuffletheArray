//
//  DefragIPAddressTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 9/30/20.
//

import XCTest
@testable import ShuffletheArray
class DefragIPAddressTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatADefragIPAddressIsNotNil() throws {
        let dia = DefragIpAddress()
        XCTAssertNotNil(dia)
    }
    
    func testThatGivenAnIPAddressWithAOnePeriodOneTheReturnWillBeOneBracketOne() {
        let dia = DefragIpAddress()
        let output = dia.defangIPaddr("1.1")
        let expected = "1[.]1"
        XCTAssertEqual(output, expected)
    }
    
    func testLeepCodeExample() {
        let dia = DefragIpAddress()
        let output = dia.defangIPaddr("1.1.1.1")
        let expected = "1[.]1[.]1[.]1"
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExample2() {
        let dia = DefragIpAddress()
        let output = dia.defangIPaddr("255.100.50.0")
        let expected = "255[.]100[.]50[.]0"
        XCTAssertEqual(output, expected)
    }

}
