import UIKit


struct UserInfo {
    
    var id:String = "" //또는 var id:String? = nil
    var pw:String = ""
    var name:String = ""
    var phone:String = ""

}


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    //Struct변수를 선언함. 객체할당(인스턴스 생성)
    var userInfo:UserInfo = UserInfo()
    //로그인되어있으면 true, 아니면 false
    var isLogin:Bool = false
    
    var isAgree:Bool = false

    
    



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }


    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {

    }


}

