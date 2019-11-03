import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                

    }
    
    override func viewWillAppear(_ animated: Bool) {
        //네비바 숨김
        self.navigationController?.isNavigationBarHidden = true
    }


}

