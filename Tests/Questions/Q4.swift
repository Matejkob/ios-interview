import XCTest
import Combine

final class Q4: XCTestCase {
    let names = CurrentValueSubject<[String], Never>(["Kevin"])
    let newNameEntered = PassthroughSubject<String, Never>()
    var subscriptions = Set<AnyCancellable>()

    func test_passthroughOnSubscribe() {
        newNameEntered
            .sink {
                print($0)
            } receiveValue: { value in
                // what kind of output will generate here print($0)?
            }
            .store(in: &subscriptions)
    }

    func test_passthroughNewValues() {
        // what will You do to adjust that test, to satisfy assert?

        newNameEntered
            .sink {
                print($0)
            } receiveValue: { value in
                XCTAssertEqual(value, "Rambo")
            }
            .store(in: &subscriptions)
    }

    func test_currentValueSubjectOnSubscribe() {
        names
            .sink {
                print($0)
            } receiveValue: { value in
                // what kind of output will generate here print($0)?
            }
            .store(in: &subscriptions)
    }

    func test_currentValueSubjectNewValues() {
        // what will You do to adjust that test, to satisfy assert?
        newNameEntered
            .sink { completion in

            } receiveValue: { value in

            }
            .store(in: &subscriptions)

        names
            .sink {
                print($0)
            } receiveValue: { values in
                XCTAssertEqual(values, ["Kevin", "Susan"])
            }
            .store(in: &subscriptions)
    }
}
