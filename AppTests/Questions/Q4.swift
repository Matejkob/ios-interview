//
//  Q4.swift
//  AppTests
//
//  Created by Łukasz Wojtarowicz on 15/07/2024.
//

import XCTest
import Combine

final class Q4: XCTestCase {
    let names = CurrentValueSubject<[String], Never>(["Kevin"])
    let newNameEntered = PassthroughSubject<String,Never>()
    var subscriptions = Set<AnyCancellable>()
    
    func test_passtroughOnSubscribe() {
        newNameEntered.sink {
            print($0)
        } receiveValue: { value in
            // what kind of output will generate here print($0)?
        }.store
    }
    
    func test_passtroughNewValues() {
        //what will You do to adjust that test, to satisfy assert?
        
        newNameEntered.sink {
            print($0)
        } receiveValue: { value in
           XCTAssertEqual(value, "Rambo")
        }.store
    }
    
    func test_currentValueSubjectOnSubscribe() {
        names.sink {
            print($0)
        } receiveValue: { value in
            // what kind of output will generate here print($0)?
        }.store
    }
    
    func test_currentValueSubjectNewValues() {
        //what will You do to adjust that test, to satisfy assert?
        newNameEntered.sink { completion in

        } receiveValue: { value in
            
        }.store
        
        names.sink {
            print($0)
        } receiveValue: { values in
            XCTAssertEqual(values, ["Kevin", "Susan"])
        }
    }
}
