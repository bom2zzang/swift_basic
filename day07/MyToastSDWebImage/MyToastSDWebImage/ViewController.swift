
import UIKit
import Toast_Swift
import SDWebImage


class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        let url : URL = URL(string:"http://nissisoft21.dothome.co.kr/idol1.png")!
        self.imageView.sd_setImage(with: url, completed: nil)
        //info.plist에서 App Transport Security Settings 추가 > Allow Arbitrary Loads : YES로 설정
        
        self.view.makeToast("!!토스트창!!",duration:5.0, position: .bottom) //5초동안 아래에 출력
        self.view.hideAllToasts() //모든 토스트 지운다.
        

    }


}

