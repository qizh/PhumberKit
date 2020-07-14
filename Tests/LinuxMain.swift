import XCTest

import PhumberKitTests

var tests = [XCTestCaseEntry]()
tests += PhumberKitTests.allTests()
XCTMain(tests)
