import XCTest

import PhumberKitTests

var tests = [XCTestCaseEntry]()
tests += PhoneNumberKitTests.allTests()
XCTMain(tests)
