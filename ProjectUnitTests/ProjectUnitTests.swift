//
//  ProjectUnitTests.swift
//  ProjectUnitTests
//
//  Created by Rafael M. Trasmontero on 4/20/18.
//  Copyright © 2018 Razeware. All rights reserved.
//

import XCTest
@testable import DogYears  //*<--"testable import"

class ProjectUnitTests: XCTestCase {
    
    let calc = Calculator()     //*<--Instance of the class file to test
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    //MARK: TEST OPERANDS
    //Test each func via "Test Navigator" press play
    
    func testAdd(){
        let sum = calc.evaluate(op: "+", arg1: 2, arg2: 3)
        XCTAssert(sum == 5, "Calc add method Failed, son!")
    }
    
    func testSubtract(){
        let diff = calc.evaluate(op: "-", arg1: 5, arg2: 3)
        XCTAssert(diff == 2, "Calc subtract method Failed.")
    }
    
    func testMultiply(){
        let product = calc.evaluate(op: "*", arg1: 2, arg2: 8)
        XCTAssert(product == 16, "Calc multiply method Failed.")
    }
    
    func testDivide(){
        let quotient = calc.evaluate(op: "/", arg1: 8, arg2: 4)
        XCTAssertTrue(quotient == 2, "Divide method Failed.")
    }
    
    func testResult(){
        let result1 = calc.evaluate(op: "+", arg1: 5, arg2: 3)
        let result2 = calc.result
        XCTAssert(result1 == result2, "Calculated result does not Match result displayed ")
        
    }
    
    func testClear(){
        //1st. First get a result
        let result1 = calc.evaluate(op: "+", arg1: 6, arg2: 2)
        let result2 = calc.result
        XCTAssert(result1 == result2,"Clear Method Failed, result1 Different from result2")
        
        //2nd. Run clear() then check result again
        calc.clear()
        let result3 = calc.result
        XCTAssert(result2 != result3 && result3 == 0.0, "Clear Method Failed, result value After Clearing is the Same as Before clearing")
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
