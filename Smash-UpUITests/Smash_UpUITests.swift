//
//  Smash_UpUITests.swift
//  Smash-UpUITests
//
//  Created by Villars Gimm on 19/09/2018.
//  Copyright © 2018 RibEye Studios. All rights reserved.
//

import XCTest

class Smash_UpUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testEditPetertoVillarsPlayer() {
        let textField = XCUIApplication().tables.children(matching: .cell).element(boundBy: 1).children(matching: .textField).element
        textField.tap()
        textField.typeText("Villars")
    }
    func testSelectFaction() {
        let tablesQuery = XCUIApplication().tables
        let cell = tablesQuery.children(matching: .cell).element(boundBy: 0)
        cell.children(matching: .button).matching(identifier: "Button").element(boundBy: 1).tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Tricksters"]/*[[".cells.staticTexts[\"Tricksters\"]",".staticTexts[\"Tricksters\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        cell.children(matching: .button).matching(identifier: "Button").element(boundBy: 0).tap()
        tablesQuery.staticTexts["Pirates"].tap()
    }
    func testGoThroughScreens() {
    }

}
