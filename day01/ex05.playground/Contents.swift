//ex05
import UIKit

// 스위프트의 객체 타입
// Any, AnyObject, nil

// Any 타입 : 모든 데이터타입을 쓸 수 있음
// Int, Float, String : 기본 자료형(구조체)
// Class, Struct, Enum, Array(콜렉션)
var myAny : Any = 100
myAny = "김김"
myAny = true

// AnyObject 타입 : 모든 클래스 객체를 담는다.
class MyClass{
    var name = "히히히"
}

class MyClass2 {
    var age = "999"
}

var myAnyObject : AnyObject = MyClass()
myAnyObject = MyClass2()

// nil 타입 : null(NULL)과 같음. 비어있는 객체(레퍼런스-참조) 변수. 주소값이 nil.


