import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sendRequest()
    }

    
    func sendRequest(){
        /*
            HTTP request: GET  http://www.site.com?id=hi&pw=1234 > 보안에 취약
                          POST http://www.site.com body id=hi pw=1234
        */
        //파라미터는 딕셔너리로 넣음 Parameters는 알라모파이어에서 정의되어있는 것!
        let param : Parameters = [
            "user_id" : "hihi",
            "user_pw" : "1234"
        ]
        
        let url : String = "http://nissisoft21.dothome.co.kr/login_test.php"
        
        Alamofire.request(url
                        ,method: .post
                        ,parameters: param
                        ,encoding : URLEncoding.httpBody
                        ,headers: ["Content-Type":"application/x-www-form-urlencoded","Accept":"application/json"]
                        ).validate(statusCode:200..<300).responseJSON(completionHandler:{
                                (response) in
                                print(response)
                                //postman이란 앱으로도 테스트 할 수 있다. *HTTP통신테스트*
                            
                            
                            switch(response.result){
                            case.success(_):
                                
                                //SwiftyJSON으로 JSON을 파싱하여 사용. 대문자JSON이 SwiftyJSON꺼
                                if let json = try? JSON(data: response.data!){
                                    let result = json["login_result"]["result"].string
                                    print("result : ",result!)
                                    let message = json["login_result"]["message"].string
                                    print("message : ",message!)
                                    let login_return = json["login_result"]["login_data"]["return"].string
                                    print("login_return : ", login_return!)
                                    let login_msg = json["login_result"]["login_data"]["message"].string
                                    print("login_msg : ", login_msg!)
                                    
                                    //배열을 가져올 때
                                    let arrayData = json["login_result"]["list"].array
                                    for data in arrayData! {
                                        let name = data["name"]
                                        print(name)
                                        let height = data["height"]
                                        print(height)
                                        let weight = data["weight"]
                                        print(weight)
                                    }
                                    

                                }
                                break
                                
                            case.failure(_):
                                print("!!통신실패!!",String(describing: response.result.error))
                                break
                            }
                            })
        
    }

}

