import UIKit

//Delegate는 프로토콜이다.
class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tfData: UITextField!
    @IBOutlet weak var tvData: UITextView!
    
    @IBOutlet weak var progView: UIProgressView!
    @IBOutlet weak var indi: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    //글자가 입력될때 이벤트
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("텍스트 입력됨.")
        tvData.text = textField.text
        
        return true
    }
    
    //글자 입력이 끝날때 이벤트
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing 입력됨.")
        return true
        //return false 이벤트가 무시됨.
    }
    
    //done,return 키가 입력될때 이벤트
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn 입력됨.")
        return true
    }
    
    
    @IBAction func onSwitchChanged(_ sender: UISwitch) {
        print("onSwitchChanged", sender.isOn)
    }
    
    @IBAction func onSegChanged(_ sender: UISegmentedControl) {
        print("onSegChanged",sender.selectedSegmentIndex)
        
        switch sender.selectedSegmentIndex {
        case 0:
            progView.progress = 0.3
            indi.startAnimating()
        case 1:
            progView.progress = 0.6
        case 2:
            progView.progress = 0.9
            indi.stopAnimating()
        default:
            progView.progress = 0
        }
    }
    
    @IBAction func onsliChanged(_ sender: UISlider) {
        print("onsliChanged", sender.value)
        
        progView.progress = sender.value
        
        
    }
    
    @IBAction func onStepChanged(_ sender: UIStepper) {
        print("onStepChanged", sender.value)
        
        tvData.text = String(sender.value)
    }
}
