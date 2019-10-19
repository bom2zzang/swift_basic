import UIKit

/*
 
 화면이동
 1. 네비게이션 컨트롤러(Navigation Controller) - 권장
    Push, Pop(Segue, Coding)
 2. 팝업 컨트롤러 : 일시적 팝업시 (로그인/회원가입/공지/이벤트/이용방법)
    Present, Dismiss(Segue, Coding)
 
 뷰컨트롤러의 수명주기
 뷰컨트롤러 사이에 데이터 전달할때
 1. 전역클래스 이용
 2. 뷰컨트롤러 변수에 데이터 전달 (Segue로 이동, 코드로 이동)
    A클래스 -> B클래스 값 전달
 3. 뷰컨트롤러 인스턴스 전달 (Segue로 이동, 코드로 이동)
    A클래스 <- B클래스 값 전달

 */

//뷰 컨트롤러의 수명주기
class ViewController: UIViewController {
    var data:String = ""

    //뷰가 시작될때 한번 호출됨.
    override func viewDidLoad() {
        //back할때 다시는 호출 안됨.
        super.viewDidLoad()
        print("viewDidLoad")
        /*
        //네비게이션 컨트롤러 함수들 (뷰 관리)
        //뒤로가기
        self.navigationController?.popViewController(animated: true)
        //뒤로가기 - 최상위뷰로 바로 이동
        self.navigationController?.popToRootViewController(animated: true)
        //특정 뷰로 이동하기
        self.navigationController?.popToViewController(newVC, animated: true)
        //특정 뷰를 삭제할 때
        self.navigationController?.viewControllers 배열에서 삭제
        //중간에 뷰를 추가할 때
        self.navigationController?.viewControllers 에 추가하면 됨.
         */
        
        //AppDelegate에 접근하는 방법
        let appDele = UIApplication.shared.delegate as! AppDelegate
        appDele.globalData = "전역변수값"
    }
    
    //뷰가 로드되고, 화면이 보이기 직전에 호출됨.
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
        //back할때 다시 호출됨.
        print("MainVC 전달받은 데이타 :", data)
        
    }

    //뷰가 로드되고, 화면이 보이고나서 호출됨.
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    //화면에 보이고, 레이아웃들이 설정되기 전에 호출됨.
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    
    //화면에 보이고, 레이아웃들이 설정된 후에 호출됨.
    override func viewDidLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    
    //화면이 사라지기 전에 한번 호출됨.
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    //화면이 사라지고 나서 호출됨.
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    //뷰를 로드할 때 커스텀할 때 사용함.(잘안씀)
    //코드적으로 뷰를 생성해서 화면에 뿌릴 때
//    override func loadView() {
//        print("loadView")
//    }
    
    //Segue로 화면이동 (데이터전달을 위하여)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let vc = segue.destination as! SecondViewController
            vc.data = "hihi"
            vc.mainVC = self //MainVC의 인스턴스 전달함.
        }
    }
    
    
    
    //코드로 뷰 이동.
    @IBAction func onBtnNext(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
                    //내가 가지고 있는 스토리보드 (main.storyboard)
        
        newVC.data = "hi2"
        newVC.mainVC = self
        self.navigationController?.pushViewController(newVC, animated: true)
        
    }
    

}

