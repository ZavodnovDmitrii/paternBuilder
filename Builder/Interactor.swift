
import Foundation

protocol InteractorProtocol {
    var name: String { get }
    init(presenter: PresenterProtocol)
}

class Interactor: InteractorProtocol {
    var name: String = "interactor class"
    var presenter: PresenterProtocol!
    
    required init(presenter: PresenterProtocol) {
        self.presenter = presenter
    }
    
    func printInteractor() {
        print("print interactor class")
    }
    
    deinit {
        print("deinit interactor")
    }
}
