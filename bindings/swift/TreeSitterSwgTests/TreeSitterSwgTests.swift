import XCTest
import SwiftTreeSitter
import TreeSitterSwg

final class TreeSitterSwgTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_swg())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Swg grammar")
    }
}
