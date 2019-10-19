import UIKit
/*
 로컬에 데이터를 저장하는 방법
 1. Sqlite3 : 비추
 2. Realm : 추천(가능하면 서버에 데이터를 전달해서 사용하는 것이 좋다.)
 3. Core Data : 비추
 4. UserDefaults : 간단한 키와 값을 저장할 수 있음.
 

 
 */
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
        
        //자동로그인시에는 이전 로그인 성공 기록을 남겨야 됨.
        //로컬에 간단한 키와 값을 저장.
        //앱이 강제종료되더라도 기록이 남아있음.
        //단, 앱이 삭제될 때 같이 삭제됨.
        UserDefaults.standard.set(true, forKey: "isLogin")
        //읽어오는법
        let isLogin = UserDefaults.standard.bool(forKey: "isLogin")
        print("isLogin : ",isLogin)
        //글로벌 변수 : 앱 전체에서 쓸 수있음. 노디비예스쿠키
        self.navigationController?.popViewController(animated: true)
        
        
    }
    



}
