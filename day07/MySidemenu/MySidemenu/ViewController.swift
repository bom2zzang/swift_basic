import UIKit


class ViewController: UIViewController {
    
    let appDele = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDele.mainVC = self

    }
    
    func gotoLoginView() {
        print("gotoLoginView")
        
        let logVC = self.storyboard?.instantiateViewController(identifier: "LoginVC") as! LoginViewController
        self.navigationController?.pushViewController(logVC, animated: true)
    }
    
                
    func gotoNoticeView() {
        print("gotoNoticeView")
        
        let ntcVC = self.storyboard?.instantiateViewController(identifier: "NoticeVC") as! NoticeViewController
        self.navigationController?.pushViewController(ntcVC, animated: true)

    }

}

