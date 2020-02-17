
import UIKit

class ViewController: UIViewController {
    var interactor: InteractorProtocol!
    var titleVC: String?
    
    init(interactor: InteractorProtocol, title: String) {
        self.interactor = interactor
        self.titleVC = title
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .blue
        
        if let title = titleVC {
             print(title)
        }
    }
    
    func printViewController() {
        print("print  viewController")
    }
    
    deinit {
        print("deinit contoller")
    }
}

