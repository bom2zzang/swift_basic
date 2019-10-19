import UIKit

class MyTabbarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Tabbar의 이벤트를 자신이 받겠다는 의미.
        self.delegate = self
    }
    
    //didSelect 탭바가 선택됐을 때 발생하는 이벤트.
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("선택된 뷰의 인덱스:",tabBarController.selectedIndex)
    }


}
