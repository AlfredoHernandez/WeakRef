//
//  Copyright © 2021 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation

class WeakRefProxy<T: AnyObject> {
    weak var object: T?

    init(_ object: T) {
        self.object = object
    }
}

extension WeakRefProxy: View where T: View {
    func display(_ viewModel: ViewModel) {
        object?.display(viewModel)
    }
}
