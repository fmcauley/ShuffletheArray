//
//  DesignParkingSystemTests.swift
//  ShuffletheArrayTests
//
//  Created by Frank McAuley on 10/13/20.
//

import XCTest
@testable import ShuffletheArray

class DesignParkingSystemTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatDesignParkingSystemIsNotNi() throws {
        let dps = DesignParkingSystem(0,0,0)
        XCTAssertNotNil(dps)
    }
    
    func testThatDesignParkingSystemHasAnInitForBigCarSpaces() throws {
        let dps = DesignParkingSystem(1,0,0)
        let ouput = dps.big
        let expected = 1
        XCTAssertEqual(ouput,expected)
    }
    
    func testThatDesignParkingSystemHasAnInitForMediumCarSpaces() throws {
        let dps = DesignParkingSystem(1,1,0)
        let output = dps.medium
        let expected = 1
        XCTAssertEqual(output, expected)
    }
    
    func testThatDesignparkingSystemHasAnInitForSmallCarSpaces() throws {
        let dps =  DesignParkingSystem(1,1,2)
        let output = dps.small
        let expected = 2
        XCTAssertEqual(output, expected)
    }
    
    func testThatDesignParkingSystemWillReturnFalseWhenAddingACarWithNoOpenSpaces() {
        let dps = DesignParkingSystem(0,0,0)
        let output = dps.addCar(1)
        let expected = false
        XCTAssertEqual(output, expected)
    }
    
    func testThatDesignParkingSystemWillReturnTrueIfthereIsOneBigCarSpotandaddCardIspassedAOne() {
        let dps = DesignParkingSystem(1,0,0)
        let output = dps.addCar(1)
        let expected = true
        XCTAssertEqual(output, expected)
    }
    
    func testThatAParkingSystemWithOneMediumSpotWillAllowOneMediumCarIn() {
        let dps = DesignParkingSystem(0,1,0)
        let output = dps.addCar(2)
        let expected = true
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExample() {
        let dps = DesignParkingSystem(1,1,0)
        let _ = dps.addCar(1)
        let output = dps.addCar(1)
        let expected = false
        
        XCTAssertEqual(output, expected)
    }
    
    func testLeetCodeExample2() {
        let dps = DesignParkingSystem(1,1,0)
        let addBig = dps.addCar(1)
        XCTAssertEqual(addBig, true)
        
        let addMedium = dps.addCar(2)
        XCTAssertEqual(addMedium, true)
        
        let addSmall = dps.addCar(3)
        XCTAssertEqual(addSmall, false)
        
        let addAnotherBig = dps.addCar(1)
        XCTAssertEqual(addAnotherBig, false)
    }
}
