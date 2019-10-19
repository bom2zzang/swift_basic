import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //selectedIndex 현재 탭바의 인덱스 0:첫번째 뷰, 1:두번째뷰

        if let index = self.tabBarController?.selectedIndex {
            print("index:", index)
        }else{
            print("index nil")
        }
    }
    
    
    @IBAction func onBtnMove(_ sender: UIButton) {
        self.tabBarController?.selectedIndex = 1
    }
    

}

