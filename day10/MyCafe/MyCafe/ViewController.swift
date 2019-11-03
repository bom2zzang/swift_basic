import UIKit

class ViewController: UIViewController {
    var data:String = ""


    @IBOutlet weak var m1: UIButton!
    @IBOutlet weak var m2: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                

    }
    
    override func viewWillAppear(_ animated: Bool) {
        //네비바 숨김
        self.navigationController?.isNavigationBarHidden = true
    }
    
    //Segue로 화면이동 (데이터전달을 위하여)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! Menu1ViewController

        if segue.identifier == "m1" {
            vc.data = "m1"
        }else if segue.identifier == "m2" {
            vc.data = "m2"
        }else if segue.identifier == "m3" {
            vc.data = "m3"
        }else if segue.identifier == "m4" {
            vc.data = "m4"
        }
    }
    


}

