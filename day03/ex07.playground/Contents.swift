import UIKit

/*
 옵셔널체이닝
 널체크를 간편하게 하는 방법
 */

class Person {
    var contact : Contact?
    //생성자 함수(init) : 생성될 때 한번 호출됨.
    init(){
        contact = Contact()
    }
}

class Contact {
    var address : String?
    var phone : String?
    var email : String? = "N/A"
}

let p = Person()
dump(p)
// 옵셔널 체이닝 안쓰고 접근하려면>>>실패
if let contact = p.contact {
    if var email = contact.email {
        p.contact?.email = "ccc@me.com" // ? 씀 ㅎ
    }
}


// 옵셔널 변수에 접근할 때,  nil이면 호출 안됨.
p.contact?.email? = "abc@me.com"
if let email = p.contact?.email{
    print(email)
}else{
    print("email==nil")
}
