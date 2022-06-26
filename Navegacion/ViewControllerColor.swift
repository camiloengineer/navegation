import UIKit

class ViewControllerColor: UIViewController {

    var titulo: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tituloFinal = titulo{
            self.title = tituloFinal
            
            switch self.title {
            case "Negro":
                self.view.backgroundColor = UIColor.black
            case "Rosa":
                self.view.backgroundColor = UIColor.systemPink
            case "Azul":
                self.view.backgroundColor = UIColor.systemBlue
            case .none:
                self.view.backgroundColor = UIColor.black
            case .some(_):
                self.view.backgroundColor = UIColor.black
            }
        }
    }
}
