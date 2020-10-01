//
//  NumberOfStepsTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 10/1/20.
//

import XCTest
@testable import ShuffletheArray

class NumberOfStepsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatNumberOfStepsIsNotNil() throws {
        let nos = NumberOfSteps()
        XCTAssertNotNil(nos)
    }
    
    func testThatGivenATwoTheNumberOfStepsToZeroIsTwo() {
        let nos = NumberOfSteps()
        let output = nos.numberOfSteps(2)
        let expected = 2
        XCTAssertEqual(output, expected)
    }
    
    func testThatGivenAThreeTheNumberOfStepsToZeroIsThree(){
        let nos = NumberOfSteps()
        let output = nos.numberOfSteps(3)
        let expected = 3
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCoodeExample() {
        let nos = NumberOfSteps()
        let output = nos.numberOfSteps(14)
        let expected = 6
        XCTAssertEqual(output, expected)
    }
    
    func testThatLeetCopeExample2Works() {
        let nos = NumberOfSteps()
        let output = nos.numberOfSteps(8)
        let expected = 4
        XCTAssertEqual(output, expected)
    }
    
    func testLeepCodeExampleThree() {
        let nos = NumberOfSteps()
        let output = nos.numberOfSteps(123)
        let expected = 12
        XCTAssertEqual(output, expected)
    }

}
