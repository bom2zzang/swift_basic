import UIKit

/*
 절차형언어:c,포트란,코볼,베이직,php
 객체지향(클래스)언어:자바,c#
 ***함수***형언어(블럭코딩(함수단위로 코드를 전달/호출)) :자바스크립트,스위프트,코틀린,파이썬
 
 함수 : 코드를 기능단위로 분리하고, 코드에 이름을 붙일 수 있다.
 func [함수명](매개변수이름1:타입1,매개변수이름2:타입2)-> 반환형(타입){
    
 }
*/

func MyFunc() {
    print("MyFunc() 호출됨.")
}

MyFunc()

/*
 함수의 4가지 패턴
 1. 매개변수x 반환형x
 2. 매개변수o 반환형x
 3. 매개변수x 반환형o
 4. 매개변수o 반환형o
 */


//1.
func MyFunc1() -> Void {
    print("1번 호출")
}
MyFunc1()

//2.
func MyFunc2(name:String) -> Void {
    print("2번 호출", name)
}
MyFunc2(name:"이게뭐야")    //매개변수의 이름을 같이 적어줘야 한다. 이게뭐지?

//3.
func MyFunc3() -> Int {
    print("3번 호출")
    return 10
}
let result = MyFunc3()

//4.
func MyFunc4(name:String) -> Int {
    print("4번 호출", name)
    return 10
}
let result2 = MyFunc4(name: "흐어")


// 함수의 고급문법
func printMyName(name1:String, name2:String){
    print("\(name1), \(name2)")
}
printMyName(name1: "김김", name2: "이이")

// 매개변수의 기본값
func printMyName2(name1:String, name2:String = "히히"){
    print("\(name1), \(name2)")
}
printMyName2(name1: "하하")
printMyName2(name1: "하하", name2: "호호") // 값을 넣어주면 기본값이 무시된다.

// 매개변수의 레이블(별명)을 지정
func printMyName3(hero name1:String, hero2 name2:String){
    print("\(name1), \(name2)")
}
printMyName3(hero:"dd", hero2:"ddd")

// 매개변수의 이름 생략 가능
func printMyName4(_ name1:String, _ name2:String){
    print("\(name1), \(name2)")
}
printMyName4("d","dd")


//가변 매개변수 - 매개변수타입 뒤에 ...
// name2가 배열
func printMyName5(name1:String, name2:String...){
    print("\(name1),\(name2)")
}
printMyName5(name1: "곧", name2: "호출","실행","종료")
