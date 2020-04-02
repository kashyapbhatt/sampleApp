//
//  SampleAppUITests.swift
//  SampleAppUITests
//
//  Created by Kashyap Bhatt on 02/04/20.
//  Copyright © 2020 Kashyap Bhatt. All rights reserved.
//

import XCTest

class SampleAppUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func testEverything() {
        XCUIApplication().launch()
        let app = XCUIApplication()
        let enterTextTextField = app.textFields["Enter text..."]
        enterTextTextField.tap()
        let nextButton = app.buttons["Next"]
        nextButton.tap()
        
        let okButton = app.alerts["Error"].scrollViews.otherElements.buttons["Ok"]
        okButton.tap()
        enterTextTextField.tap()
        enterTextTextField.typeText("1234567890")
        nextButton.tap()
        app.buttons["Previous"].tap()
    }
}
