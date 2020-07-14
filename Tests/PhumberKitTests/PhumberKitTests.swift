import XCTest
@testable import PhumberKit

final class PhumberKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(PhumberKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
