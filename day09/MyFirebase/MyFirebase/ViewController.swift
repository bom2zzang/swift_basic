import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var labelLogin: UILabel!
    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfPW: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    func updateUI(){
        //Auth클래스 : 인증(회원가입,로그인,암호)관련 클래스
        //currentUser : 세션을 유지 - 한번 로그인하면, 파일에 저장해서 다시 앱 구동하면, 로그인 된 상태 유지.
        //다시 로그인 하려면, 로그아웃을 한번 해야 함.
        if let user = Auth.auth().currentUser {
            labelLogin.text = "로그인상태: \(user.email!) 로그인"
        }else{
            labelLogin.text = "로그인상태: 로그아웃"
        }
    }
    
    

    @IBAction func onBtnLogin(_ sender: Any) {
        
        if let textID = tfID.text, let textPW = tfPW.text {
            if textID.count<1 || textPW.count < 6 {
                print("아이디나 암호의 길이가 짧습니다.")
            }else{
            
                Auth.auth().signIn(withEmail: textID, password: textPW) {
                    //후행클로저
                    [weak self] user, error in
                    guard let strongSelf = self else {return}
                    print("로그인 성공")
                    
                    let user = Auth.auth().currentUser
                    
                    print("\(user?.email). \(user?.uid)")
                    
                    // 로그인 후에는 사용자의 정보를 가져와서
                    // UserInfo Struct에 넣어줄수있다.
                    self?.updateUI()
                }
            }
            
        }else{
            print("아이디나 암호가 입력되지 않았습니다.")
        }
    }
    
    @IBAction func onBtnLogout(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do{
            //로그아웃 함수
            try firebaseAuth.signOut()
            
        }catch let signOutError as NSError {
            print("singOutError: %@", signOutError)
        }
        updateUI()
        
    }
    
    @IBAction func onBtnJoin(_ sender: Any) {
        if let textID = tfID.text, let textPW = tfPW.text {
            if textID.count<1 || textPW.count<6 {
                print("아이디나 암호가 짧")
                return
            }
            Auth.auth().createUser(withEmail: textID, password: textPW) {
                //후행클로저
                authResult, error in
                guard let user = authResult?.user, error == nil else {
                    print(error!.localizedDescription)
                    return
                }
                //회원가입성공
                print("\(user.email!) 회원가입 성공함!")
            }
        }else{
            print("아이디나 암호가 입력되지 않았음.")
        }
        
    }
    
    
}

	
	
