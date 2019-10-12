import UIKit

// 형변환 (type casting)

let myInt : Int = 10
let myFloat : Float = 2.22
let myString : String = "123"

let myDouble = Double(myInt)
let myInt2 = Int(myFloat)   //소수점아래가날아감
let myString2 = String(myInt)
let myInt3 = Int(myString)  // nil이 될 수 있어서 조심해야함.
if let myInt4 = Int("abc"){
    print(myInt4)
}else{
    print(" nil")
}

// 클래스의 형변환(다형성)
class Person {
    var name : String = ""
    func breath(){
        print("숨")
    }
}

class Student : Person {
    var school : String = ""
    func gotoSchool(){
        print("학교가기")
    }
}

class UnivStudent : Student {
    var major :String = ""
    func gotoMT(){
        print("goMT")
    }
}

var tt : Person = Person()
var hh : Student = Student()
var jj : UnivStudent = UnivStudent()


// 다형성 - 상속관계에서 어떤 클래스의 속성을 가지고 있는지 확인해 보자, 유전자검사
var result : Bool = false
result = tt is Person
result = tt is Student
result = tt is UnivStudent
result = hh is Person
result = hh is Student
result = hh is UnivStudent
result = jj is Person
result = jj is Student
result = jj is UnivStudent

switch jj {
    case is Person:
        print("Person속성ㅇㅋ")
    case is Student:
        print("Student속성ㅇㅋ")
    case is UnivStudent:
        print("UnivStudent속성ㅇㅋ")
}

// is 연산자 : 타입확인 연산자
// as 연산자 : 클래스 형변환 연산자

// 조건부 다운캐스팅 (Down Casting) as?
var optionalCasted : Student?
optionalCasted = tt as? UnivStudent // nil
optionalCasted = hh as? UnivStudent // nil
optionalCasted = jj as? UnivStudent // nil

// ??연산자 : nil이면 디폴트값을 주는 연산자.
optionalCasted = tt as? UnivStudent ?? UnivStudent()

// 강제 다운캐스팅 as! : nil임을 각오하고 형변환
var forcedCasted : Student?
//forcedCasted = tt as! UnivStudent //error
//forcedCasted = hh as! UnivStudent //error
forcedCasted = jj as! UnivStudent
