//
//  Copyright © 2021 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

@testable import WeakRef
import XCTest

class WeakRefTests: XCTestCase {
    func test_view_doesNotGenerateRetainCycles() {
        let sut = makeSUT()

        sut.loadViewIfNeeded()
    }

    // MARK: - Helpers

    private func makeSUT(file: StaticString = #filePath, line: UInt = #line) -> ViewController {
        let model = FetchMessage()
        let controller = Composer.composeWith(fetcher: model)
        trackForMemoryLeaks(model, file: file, line: line)
        trackForMemoryLeaks(controller, file: file, line: line)
        return controller
    }
}

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memory leak!", file: file, line: line)
        }
    }
}
