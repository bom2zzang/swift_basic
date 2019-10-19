import UIKit

class JoinViewController: UIViewController {

    @IBOutlet weak var textfieldID: UITextField!
    @IBOutlet weak var textfieldPW: UITextField!
    @IBOutlet weak var textfieldName: UITextField!
    @IBOutlet weak var textfieldPhone: UITextField!
    
    let appDele = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onBtnJoin(_ sender: Any) {
            if appDele.isAgree == true {
                
            
            let id = textfieldID.text
            let pw = textfieldPW.text
            let name = textfieldName.text
            let phone = textfieldPhone.text
            
            appDele.userInfo.id = id!
            appDele.userInfo.pw = pw!
            appDele.userInfo.name = name!
            appDele.userInfo.phone = phone!
            
            
            print("회원가입되었습니다!")
            self.navigationController?.popViewController(animated: true)
        }else{
            print("약관동의해주세요.")
            
        }
        
    }
    
    @IBAction func onBtnAgree(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "AgreeVC") as! AgreeViewController
        
        //completion : 함수 실행 후 처리할 코드-클로저.(비동기적으로_)
        self.present(newVC, animated: true, completion: nil)
        
        
    }
    
    
    
}
