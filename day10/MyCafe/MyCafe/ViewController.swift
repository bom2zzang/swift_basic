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

        if segue.identifier == "m1" {
            let vc = segue.destination as! Menu1ViewController
            vc.data = "1"
        }else if segue.identifier == "m2" {
            let vc = segue.destination as! Menu1ViewController
            vc.data = "2"
        }else if segue.identifier == "m3" {
            let vc = segue.destination as! Menu1ViewController
            vc.data = "3"
        }else if segue.identifier == "m4" {
            let vc = segue.destination as! Menu1ViewController
            vc.data = "4"
        }
    }
    


}

