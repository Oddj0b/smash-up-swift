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
    func testSelectFaction() {
        let tablesQuery = XCUIApplication().tables
        XCUIApplication().navigationBars["Set up game"].buttons["Add"].tap()
        let cell = tablesQuery.children(matching: .cell).element(boundBy: 0)
        let app = XCUIApplication()
        app.navigationBars["Set up game"].buttons["Add"].tap()
        let tablesQuery2 = app.tables
        cell.buttons["Select faction 2"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Aliens"]/*[[".cells.staticTexts[\"Aliens\"]",".staticTexts[\"Aliens\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        cell.buttons["Select faction 1"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Pirates"]/*[[".cells.staticTexts[\"Pirates\"]",".staticTexts[\"Pirates\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
    func testStartGame() {
        let app = XCUIApplication()
        let setUpGameNavigationBar = app.navigationBars["Set up game"]
        let addButton = setUpGameNavigationBar.buttons["Add"]
        addButton.tap()
        addButton.tap()
        setUpGameNavigationBar.buttons["Start game"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["GB_placeholder"]/*[[".staticTexts[\"Game board placeholder\"]",".staticTexts[\"GB_placeholder\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
    func testEndGame() {
        testStartGame()
        XCUIApplication()/*@START_MENU_TOKEN@*/.buttons["finish_game_btn"]/*[[".buttons[\"Finish Game\"]",".buttons[\"finish_game_btn\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()        
    }

}
