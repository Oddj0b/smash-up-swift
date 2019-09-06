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
        XCTContext.runActivity(named: "Add player") { (activity) in
        XCUIApplication().navigationBars["Set up game"].buttons["Add"].tap()
        }
        let cell = tablesQuery.children(matching: .cell).element(boundBy: 0)
        let app = XCUIApplication()
        XCTContext.runActivity(named: "Add Alien and Pirates as faction") { (activity) in
        app.navigationBars["Set up game"].buttons["Add"].tap()
        cell.buttons["btn_faction_2"].tap()
        tablesQuery.staticTexts["Aliens"].tap()
        cell.buttons["btn_faction_1"].tap()
        tablesQuery.staticTexts["Pirates"].tap()
        }
    }
    func testStartGame() {
        let app = XCUIApplication()
        let setUpGameNavigationBar = app.navigationBars["Set up game"]
        XCTContext.runActivity(named: "Assert homescreen is shown") { (activity) in
            setUpGameNavigationBar.title == "Set-up game"
        }
        XCTContext.runActivity(named: "Add two players to the game" ) { (activity) in
            let addButton = setUpGameNavigationBar.buttons["Abd"]
            addButton.tap()
            addButton.tap()
            setUpGameNavigationBar.buttons["Start game"].tap()
        }
        XCTContext.runActivity(named: "See the game placeholder") { (activity) in
            app.staticTexts["GB_placeholder"].tap()
        }
    }
    func testEndGame() {
        testStartGame()
        XCTContext.runActivity(named: "End the game") { (activity) in
        XCUIApplication().buttons["finish_game_btn"].tap()
        }
    }
    
}
