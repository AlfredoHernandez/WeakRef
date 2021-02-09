//
//  Copyright © 2021 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation

struct ViewModel {
    let message: String
}

protocol View {
    func display(_ viewModel: ViewModel)
}

class Presenter {
    private let fetcher: FetchMessage
    private let view: View

    init(fetcher: FetchMessage, view: View) {
        self.fetcher = fetcher
        self.view = view
    }

    func didRequestMessage() {
        fetcher.get { [weak self] message in
            self?.view.display(ViewModel(message: message))
        }
    }
}
