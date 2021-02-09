//
//  Copyright © 2021 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation

class WeakRefProxy: View {
    weak var view: (View & AnyObject)?

    init(_ view: View & AnyObject) {
        self.view = view
    }

    func display(_ viewModel: ViewModel) {
        view?.display(viewModel)
    }
}
