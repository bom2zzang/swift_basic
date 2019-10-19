
import UIKit

class SecondViewController: UIViewController {
    
    var data:String = ""
    var mainVC:ViewController? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        print("전달받은 데이터: ", self.data)
        
        let appDele = UIApplication.shared.delegate as! AppDelegate
        print("SecondVC에서 출력",appDele.globalData)


    }
    
    //Segue로 화면이동 (데이터전달을 위하여)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThirdVC" {
            let vc = segue.destination as! ThirdViewController
            vc.data = "hihiThird"
        }
    }
    
    

    @IBAction func onBtnNext(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdViewController

        newVC.data = "hiThird2"
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    
    @IBAction func onBtnBack(_ sender: UIButton) {
        self.mainVC?.data = "Second에서 왔습니다."
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
