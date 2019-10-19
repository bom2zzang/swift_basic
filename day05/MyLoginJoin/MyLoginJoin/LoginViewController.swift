import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textfieldID: UITextField!
    @IBOutlet weak var textfieldPW: UITextField!
    
    let appDele = UIApplication.shared.delegate as! AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func onButton(_ sender: UIButton) {
        
        let id = textfieldID.text
        let pw = textfieldPW.text
        
        appDele.userInfo.id = id!
        appDele.userInfo.pw = pw!
        appDele.isLogin = true
        
        self.navigationController?.popViewController(animated: true)
        
        
    }
    



}
