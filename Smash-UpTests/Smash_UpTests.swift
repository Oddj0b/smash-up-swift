//
//  Smash_UpTests.swift
//  Smash-UpTests
//
//  Created by Villars Gimm on 02/04/2019.
//  Copyright © 2019 RibEye Studios. All rights reserved.
//

import XCTest

class Smash_UpTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() -> Bool {
        let three = Int.random(in: 2 ... 5)
        let two = 2
        let result = three + two
        if result > 1{
            return true
        }else{
            return false
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
