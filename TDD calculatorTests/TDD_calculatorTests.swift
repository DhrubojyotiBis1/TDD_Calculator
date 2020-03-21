//
//  TDD_calculatorTests.swift
//  TDD calculatorTests
//
//  Created by Dhrubojyoti on 22/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import XCTest
@testable import TDD_calculator

class TDD_calculatorTests: XCTestCase {

    let calculateBrain = calculate()
    
    func testForAddition(){
        let sum = self.calculateBrain.addNumber(X:10,Y:10)
        XCTAssertEqual(20, sum)
    }
    
    func testForSub(){
        let diffference = self.calculateBrain.subNumber(X:10,Y:10)
        XCTAssertEqual(0, diffference)
    }

}
