import UIKit
import WebKit

class Menu5ViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = false
        loadWebPage("http://paikdabang.com/store/")

    }
    
    func loadWebPage(_ url:String){
        let myURL = URL(string:url)
        let myReq = URLRequest(url: myURL!)
        myWebView.load(myReq)
    }
    

}
