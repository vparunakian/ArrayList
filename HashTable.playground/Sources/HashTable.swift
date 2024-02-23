import Foundation
import XCTest

// MARK: - HashTable
public struct HashTable<Key: Hashable, Value> {
    typealias Element = (key: Key, value: Value)

    private var storage: [[Element]]
    public private(set) var count = 0

    public var isEmpty: Bool {
        count == 0
    }

    // MARK: - Initialization
    public init(capacity: Int) {
        guard capacity > 0 else {
            fatalError("The `HashTable` capacity should be larger than zero")
        }
        self.storage = [[Element]](repeating: [], count: capacity)
    }

    private func storageIndex(for key: Key) -> Int {
        abs(key.hashValue % storage.count)
    }

    subscript(index: Key) -> Value {
        get {
            let storageIndex = storageIndex(for: index)
            let values = storage[storageIndex]
            let keyValuePair = values.first { $0.key == index }
            guard let value = keyValuePair?.value else {
                fatalError("Index out of range")
            }
            return value

        }
        set(newValue) {
            let storageIndex = storageIndex(for: index)
            storage[storageIndex].append((index, newValue))
            count += 1
        }
    }

    public func insert() {}
    func search() {}
    func remove() {}
}
