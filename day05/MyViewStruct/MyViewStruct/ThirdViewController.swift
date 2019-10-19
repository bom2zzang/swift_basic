import UIKit

class ThirdViewController: UIViewController {
    
    var data:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("전달받은 데이터: ", self.data)
        
        let appDele = UIApplication.shared.delegate as! AppDelegate
        print("ThirdVC에서 출력",appDele.globalData)

    }
    

    @IBAction func onBtnBack(_ sender: UIButton) {
    self.navigationController?.popViewController(animated: true)
    }
    

}
