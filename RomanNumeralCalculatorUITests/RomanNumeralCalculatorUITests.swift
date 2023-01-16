//
//  RomanNumeralCalculatorUITests.swift
//  RomanNumeralCalculatorUITests
//
//  Created by Jarrod Parkes on 11/29/16.
//  Copyright © 2016 buddybuild. All rights reserved.
//

import XCTest

class RomanNumeralCalculatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOnePlusOne() {
        let app = XCUIApplication()
        app.buttons["I"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["+"]/*[[".buttons[\"+\"].staticTexts[\"+\"]",".staticTexts[\"+\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["I"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["calculated_value"]/*[[".staticTexts[\"II\"]",".staticTexts[\"calculated_value\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertEqual(app/*@START_MENU_TOKEN@*/.staticTexts["calculated_value"]/*[[".staticTexts[\"II\"]",".staticTexts[\"calculated_value\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.label, "II")
    }
    
}
