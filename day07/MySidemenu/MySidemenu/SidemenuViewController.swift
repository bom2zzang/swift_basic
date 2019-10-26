import UIKit

class SidemenuViewController: UIViewController {

    let appDele = UIApplication.shared.delegate as! AppDelegate

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func onBtnLogin(_ sender: UIButton) {
        //사이드메뉴 닫기
        appDele.mySidemenu?.dismiss(animated: true, completion: nil)
        //메인뷰에서 로그인화면으로 이동
        appDele.mainVC?.gotoLoginView()
        
    }
    

    @IBAction func onBtnNotice(_ sender: UIButton) {
        //사이드메뉴 닫기
        appDele.mySidemenu?.dismiss(animated: true, completion: nil)
        //메인뷰에서 로그인화면으로 이동
        appDele.mainVC?.gotoNoticeView()
    }
}
