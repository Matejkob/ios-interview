import XCTest
import Combine

final class Q1: XCTestCase {
    func test() {
        var cancelable = (2...3)
            .publisher
            .flatMap {
                if let publisher = self.publisher(when: true) {
                    return Just($0).eraseToAnyPublisher()
//                    return publisher.eraseToAnyPublisher()
                } else {
                    return Just($0).eraseToAnyPublisher()
                }
            }
            .sink { value in
                print("2️⃣ received value: \(value) in sink")
            }
    }

    func publisher(when condition: Bool) -> AnyPublisher<Int, Never>? {
        if condition {
            return (0...1)
                .publisher
                .handleEvents(receiveOutput: { output in
                    print("1️⃣ receive output: \(output) in handle events")
                })
                .eraseToAnyPublisher()
        } else {
            return nil
        }
    }
}
