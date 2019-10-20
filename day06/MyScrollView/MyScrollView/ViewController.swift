
import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //scrollView에 오토레이아웃 지정되었으므로, 뷰 레이아웃이 설정된 후에 제어해야 됨.
    override func viewDidLayoutSubviews() {
        scrollView.backgroundColor = UIColor.blue
    }
    
    //scrollView가 호출되었을 때 호출됨.
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //print("scrollViewDidScroll")
        print("scrollViewDidScroll 현재위치 : ",scrollView.contentOffset)
    }

    //드래깅 하기 전 호출함.
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("scrollViewWillBeginDragging")
    }
    
    //드래깅 끝나기 전 호출.
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        print("scrollViewWillEndDragging")
        print("속도:",velocity)
    }
}

