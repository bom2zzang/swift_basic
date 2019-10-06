import UIKit

/*
 값 타입과 참조 타입
 value type : 변수 안에 실제 데이터가 저장되어 있음.
 reference type : 실제 데이터가 들어있는 메모리공간의 주소값을 저장.
 
 swift에서는
 value type : 구조체(기본자료형:Int,Float,String,Bool)
              열거형(Enum), 딕셔너리(Dictionary), 배열(Array), 집합(Set)
 reference type : 클래스, NS류의 자료형들(레거시 Objective-C에서 사용: NSString,NSArray,NSNumber)
 
 NS : Next Step

 swift는 값타입을 선호함
 
 구조체(Struct) : 변수와 함수, 값타입, 익스텐션, 값 전달이 간편
 클래스(Class) : 변수와 함수, 참조타입, 상속가능(override), 익스텐션(기능확장), 값 전달이 불편
 열거형(Enum) : 변수와 함수, 값타입, 익스텐션
 
*/

struct MyStruct {
    var age = 30
}

class MyClass {
    var age = 30
}

let myStruct = MyStruct() // new 없어짐
var myStruct2 = myStruct // 복사 : 값도 함께 복사됨.
myStruct2.age = 33
print(myStruct.age) //30

let myClass = MyClass()
var myClass2 = myClass
myClass2.age = 33
print(myClass.age) //33

