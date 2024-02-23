import Foundation
import XCTest

// MARK: - HashTable
public struct HashTable<Key: Hashable, Value> {
    typealias Element = (key: Key, value: Value)
    private var storage: [[Element]]
    private(set) public var count = 0

    public var isEmpty: Bool {
        count == 0
    }

    // MARK: - Initialization
    public init(capacity: Int) {
        guard capacity > 0 else {
            fatalError("The `HashTable` capacity should be larger than zero")
        }
        self.storage = Array<[Element]>(repeating: [], count: capacity)
    }

    private func index(for key: Key) -> Int {
        abs(key.hashValue % storage.count)
    }


    public func insert() {}

    




    func search() {}
    func remove() {}
}


