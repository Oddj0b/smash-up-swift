//
//  Smash_UpUITests.swift
//  Smash-UpUITests
//
//  Created by Villars Gimm on 26/04/2017.
//  Copyright © 2017 RibEye Studios. All rights reserved.
//

import XCTest
import AppCenterXCUITestExtensions
class Smash_UpUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
     

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func addViewInStackview() {
        XCUIApplication().launch()
        let app = XCUIApplication()
        let button = app.buttons["Button"]
        button.tap()
        
        let element = app.otherElements.containing(.button, identifier:"Button").children(matching: .other).element
        element.tap()
        button.tap()
    }
    
}
