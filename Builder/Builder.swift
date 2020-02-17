
import UIKit

protocol BuilderProtocol {
    var name: String { get }
    func build() -> UIViewController
}

class Builder: BuilderProtocol {
    var name: String = "builder class"
    var nameVC: String?
    
    func setTitle(name: String) -> Builder {
        self.nameVC = name
        return self
    }
    
    func build() -> UIViewController {
        guard let name = nameVC else { fatalError("no name vc")}
        let presenter = Presenter()
        let interactor = Interactor(presenter: presenter)
        let controller = ViewController(interactor: interactor, title: name)
        presenter.controller = controller
        return controller
    }
    
    func printBuilder() {
        print("print builder")
    }
    
    deinit {
        print("deinit builder")
    }
}
