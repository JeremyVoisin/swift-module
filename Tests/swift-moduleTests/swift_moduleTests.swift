import XCTest
@testable import swift_module

final class swift_moduleTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(swift_module().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
