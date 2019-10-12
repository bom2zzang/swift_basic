import UIKit

/*
 구조체와 클래스
 
         구조체     열거형            클래스
 형식     값타입     값타입(복사간편)     참조타입(주소값,복사불편,동적확장)
 상속     불가      불가              가능
 익스텐션  가능      가능              가능
 
 스위프트는 구조체 선호
 */

struct Student {
    var name : String = "호옹"
    var age  : Int    =  30
    func printMyName(){
        print(self.name)
    }
}

// 구조체의 객체 할당(인스턴스) : 메모리에 할당
var structStudent : Student = Student() //  new없음.
dump(structStudent)
// 멤버변수에 접근
structStudent.name = "비비"
structStudent.printMyName()

let structStudent2 = structStudent //값 복사됨.
dump(structStudent2)

// 클래스
class Person {
    var name : String = "바바"
    var age  : Int    = 10
    func printMyName(){
        print(self.name)
    }
}

// 클래스 객체 생성
var classPerson = Person()
classPerson.name = "뱌뱌"
classPerson.printMyName()

// 클래스의 생성자
// init함수 - 이니셜라이즈
class SchoolMan {
    var name : String
    var age  : Int
    
    //선택적 초기화(옵셔널변수)
    var nickName : String?
    
    init(name:String, age:Int){
        self.name = name
        self.age = age
    }
}

var schoolMan = SchoolMan(name: "ㅅㅋㅁ", age: 20)
print(schoolMan.name)
print(schoolMan.age)
schoolMan.nickName = "이힝"
if let nick = schoolMan.nickName {
    print(nick)
}

var schoolMan2 : SchoolMan? = SchoolMan(name: "김분석", age: 21)
schoolMan2 = nil

// 클래스의 상속 : 부모클래스의 자산(변수,함수)를 자식클래스에게 넘겨줌.
class Parent {
    var name : String = "붐오"
    var age  : Int    = 1
    func printMyName(){
        print(self.name)
    }
}

// 콜론 연산자를 이용하여, 상속함.
class Child : Parent {
    
}

var child = Child()
print(child.age)
print(child.name)
child.printMyName()

// 클래스(구조체,열거형)의 속성 Property - get, set함수
struct People {
    var name : String = "녹두"
    var korAge = 30
    var engAge: Int {
        get {   // 변수를 읽을 때 자동으로 호출됨.
            return korAge - 1
        }
        set(inputValue) {   // 값을 대입(=)할 때 자동으로 호출됨.
            korAge = inputValue + 1
        }
    }
}

var pp : People = People()
pp.korAge
print(pp.engAge)    // get함수가 자동으로 호출됨
pp.engAge = 4      // set함수가 자동으로 호출됨
pp.korAge


// 속성 감시자
struct Hero {
    var name : String = "용식이"
    var age : Int = 30 {
        // 감시자 함수가 있다.
        willSet(newAge) {   // 값설정 - 선처리
            print("1.이전나이: \(age)가 새나이 \(newAge)로 변경됨")
        }
        didSet(oldAge) {    // 값설정 - 후처리
            print("2.이전나이: \(oldAge)가 새나이 \(age)로 변경됨")

        }
    }
}

var hero : Hero = Hero()
hero.age = 80
