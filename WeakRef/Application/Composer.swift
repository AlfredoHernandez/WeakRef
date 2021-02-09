//
//  Copyright © 2021 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation

class Composer {
    static func composeWith(fetcher: FetchMessage) -> ViewController {
        let controller = ViewController()
        let presenter = Presenter(fetcher: fetcher, view: WeakRefProxy(controller))
        controller.presenter = presenter
        return controller
    }
}
