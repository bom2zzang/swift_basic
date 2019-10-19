import UIKit

class AgreeViewController: UIViewController {
    
    @IBOutlet weak var agreests: UISwitch!
    
    let appDele = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func onBtnBack(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onSwitchAgree(_ sender: UISwitch) {
        print("약관상태",sender.isOn)
        appDele.isAgree = sender.isOn
    }
    
}
