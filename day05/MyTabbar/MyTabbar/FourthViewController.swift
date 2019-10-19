import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func onBtnMove(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
        self.tabBarController?.selectedIndex = 0
    }
}
