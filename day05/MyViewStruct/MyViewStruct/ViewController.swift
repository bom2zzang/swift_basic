import UIKit

/*
 
 화면이동
 1. 네비게이션 컨트롤러(Navigation Controller) - 권장
    Push, Pop(Segue, Coding)
 2. 팝업 컨트롤러 : 일시적 팝업시 (로그인/회원가입/공지/이벤트/이용방법)
    Present, Dismiss(Segue, Coding)
 
 */

//뷰 컨트롤러의 수명주기
class ViewController: UIViewController {

    //뷰가 시작될때 한번 호출됨.
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
    //뷰가 로드되고, 화면이 보이기 직전에 호출됨.
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
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
    
    //코드로 뷰 이동.
    @IBAction func onBtnNext(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
                    //내가 가지고 있는 스토리보드 (main.storyboard)
        self.navigationController?.pushViewController(newVC, animated: true)
        
    }
    

}

