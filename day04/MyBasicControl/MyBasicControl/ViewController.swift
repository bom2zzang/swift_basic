import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var lTitle: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var textfieldTitle: UITextField!
    @IBOutlet var btns: [UIButton]!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        topView.backgroundColor = UIColor.red
        btn1.backgroundColor = UIColor.cyan
        lTitle.text = "제목"
        
        imgView.image = UIImage(named:"img2.png")
        
        
    }

    @IBAction func onBtn1Clicked(_ sender: UIButton) {
        print("btn1 clicked")
    }
    
    @IBAction func onBtn2Clicked(_ sender: UIButton) {
        
        for btn in btns {
            btn.backgroundColor = UIColor.blue
            
        }
        
    }


    @IBAction func onBtnInputClicked(_ sender: UIButton) {
        let titleText = textfieldTitle.text
        lTitle.text = titleText
    }
    
}

