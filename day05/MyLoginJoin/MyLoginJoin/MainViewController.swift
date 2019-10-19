import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var labelStatus: UILabel!
    
    let appDele = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //뷰가 화면에 다시 보일 때
        
    }


}

