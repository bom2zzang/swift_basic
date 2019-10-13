import UIKit

/*
  한 화면을 관리하는 소스 : UIViewController
  한 화면을 관리하는 UI : XIB(NIB) > Storyboard(여러화면을 같이 관리)
 */

class ViewController: UIViewController {
    
    // override : 부모 클래스의 메소드를 재정의
    // viewDidLoad : 뷰가 화면에 뜨기 전에 맨 처음 호출되는 메소드(함수)
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad 호출됨")
        // Do any additional setup after loading the view.
    }


}

