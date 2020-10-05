//
//  DecompressRunLengthEncodingListTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 10/5/20.
//

import XCTest
@testable import ShuffletheArray
class DecompressRunLengthEncodingListTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatDecompressRunLengthEncodingListIsNotNil() throws {
        let drlel = DecompressRunLengthEncodingList()
        XCTAssertNotNil(drlel)
    }

    func testThatGivenAnInputOfOneOneOutPutWillBeOne() {
        let drlel = DecompressRunLengthEncodingList()
        let output = drlel.decompressRLElist([1,1])
        let expected = [1]
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatGivenAnInputOfTwoOneOutPutWillBeOneOne() {
        let drlel = DecompressRunLengthEncodingList()
        let output = drlel.decompressRLElist([2,1])
        let expected = [1,1]
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatLeetCodeExampleOne() {
        let drlel = DecompressRunLengthEncodingList()
        let output = drlel.decompressRLElist([1,2,3,4])
        let expected = [2,4,4,4]
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatLeetCodeExampleTwo() {
        let drlel = DecompressRunLengthEncodingList()
        let output = drlel.decompressRLElist([1,1,2,3])
        let expected = [1,3,3]
        
        XCTAssertEqual(output, expected)
    }

}
