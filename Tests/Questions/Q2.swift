import XCTest
import Combine

final class Q2: XCTestCase {
    let account = Account()

    func test() {

    }
}

final class Account {
    var messages: [String] = []

    func getMessages() -> AnyPublisher<[String], Error> {
        // TODO: 
        // Download messages
        // Then save them in local database
        // Sync them with `messages` property in the `Account` class
        // and return a publisher with up-to-date messages.
        fatalError()
    }

    private func downloadMessages() -> AnyPublisher<[String], Error> {
        // Simulate downloading...
        return Just(["Hello", "World"])
            .delay(for: 1, scheduler: DispatchQueue.global())
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }

    private func saveMessages() -> AnyPublisher<Void, Error> {
        // Simulate saving in a local database...
        return Just(())
            .delay(for: 1, scheduler: DispatchQueue.global())
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}
