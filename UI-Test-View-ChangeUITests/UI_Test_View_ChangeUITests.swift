//
//  UI_Test_View_ChangeUITests.swift
//  UI-Test-View-ChangeUITests
//
//  Created by Giovanni on 24/07/2015.
//  Copyright © 2015 mokacoding. All rights reserved.
//

import XCTest

class UI_Test_View_ChangeUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    func testTipLabelChangesAfterTimeout() {
        let app = XCUIApplication()
        let expectedText = "Now you can press me"
        let identifier = "lunatic button"
        self.expectationForPredicate(NSPredicate(format: "label BEGINSWITH '\(expectedText)'"),
            evaluatedWithObject: app.buttons.elementMatchingType(XCUIElementType.Button, identifier: identifier), handler: nil)
        self.waitForExpectationsWithTimeout(10, handler: nil)
    }
    
}
