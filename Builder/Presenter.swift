
import Foundation

protocol PresenterProtocol {
    var name: String { get }
}

class Presenter: PresenterProtocol {
    var name: String = "presenter class"
    weak var controller: ViewController!
    
    func printPresenter() {
        print("print presenter class")
    }
    
    deinit {
        print("deinit presenter")
    }
}
