import UIKit
/*
 제네릭(Generics)
 타입을 여러형태로 입력해주기 위해서 사용
 함수, 구조체, 클래스, 열거형에 사용 가능
 */

struct Calc<TYPE> {
    var myParam : TYPE
    init(param: TYPE) {
        self.myParam = param
    }
}

var myCalc = Calc<Int>(param: 10)
var myCalc2 = Calc<String>(param: "도레미파")
