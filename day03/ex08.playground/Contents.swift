import UIKit
/*
 프로토콜(Protocol) : 자바의 인터페이스와 유사
 
 일반클래스와 프로토콜(인터페이스)의 차이점
 다중상속x   다중상속o
 
 프로토콜은 가상함수만 있음 (선언만 있고 본체가 없는 함수)
         기능목록만 기술할 뿐, 실제 기능은 없음 (설계)
 구현클래스는 프로토콜에 기술된 실제기능을 구현한다 (구현)
 
 */

protocol Talkable {
    var lang : String {get} // 읽기만 가능
    var topic : String {get set} // 읽기 쓰기 가능
    func talk() // 선언
}

protocol Runnable {
    func run() // 선언
}

struct Person : Talkable, Runnable { // 다중상속
    var lang : String // 프로퍼티 요구 준수
    var topic: String
    func talk(){    // 구현
        print("말한다")
    }
    func run(){
        print("달")
    }
    
    //생성자함수
    init(lang:String, topic:String){
        self.lang = lang
        self.topic = topic
    }

}

// 메소드 오버로딩(Overloading) : 매개변수를 다르게 해서 확장 하는 것.
// 메소드 오버라이딩(Overriding) : 상속받은 자식클래스에서 부모메소드를 재정의 하는 것.

// 오버로딩
class ParentClass {
    func printMyName(name:String){
        print(name)
    }
    func printMyName(name:String,age:Int){
        print("\(name), \(age)")
    }
}

class ChildClass : ParentClass {
    override func printMyName(name:String) {
        print("my name is \(name) .")
    }
}

var child = ChildClass()
child.printMyName(name: "동백")
