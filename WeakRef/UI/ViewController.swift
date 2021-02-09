//
//  Copyright © 2021 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import UIKit

class ViewController: UIViewController, View {
    var presenter: Presenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        presenter?.didRequestMessage()
    }

    func display(_ viewModel: ViewModel) {
        print(viewModel.message)
    }
}
