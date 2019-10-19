import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var labelStatus: UILabel!
    
    let appDele = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //뷰가 화면에 다시 보일 때
        
        if appDele.isLogin == true {
            labelStatus.text = "로그인됨\(appDele.userInfo.id)"
        }else{
            labelStatus.text = "로그오프상태"
        }
    }
    
    
    @IBAction func onBtnLogoff(_ sender: UIButton) {
        
        appDele.isLogin = false
        appDele.userInfo = UserInfo()
        labelStatus.text = "로그오프상태"
    }
    


}

