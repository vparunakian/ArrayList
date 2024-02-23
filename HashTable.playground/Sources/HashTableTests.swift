import XCTest

public final class HashTableTests: XCTestCase {
    func testNotNil() {
        let hashTable = HashTable<String, String>(capacity: 1)
        XCTAssertNotNil(hashTable)
    }

    func testCreateEmptyTable() {
        let hashTable = HashTable<String, String>(capacity: 3)
        XCTAssertTrue(hashTable.isEmpty)
    }
}
