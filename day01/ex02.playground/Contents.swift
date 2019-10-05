// ex02.playground
import UIKit
/*
 ios앱 개발을 위한 swift4
 3장 변수와 상수 p47
 변수 : Variable - 메모리공간(4byte)
 상수 : Constant - 메모리공간, 값 변경 불가.
 
 Swift에서 변수 var 예약어(keyword)를 사용.
          상수 let 사용.
 */

// 변수의 선언
// var [변수명] : 타입(자료형)
var myStr : String = "스위프트"

// 타입은 생략가능 - 타입 추정에 의해 결정됨.
var myStr2 = "ios  앱앱앱앱"

/*
 Camel Text
 ex) myNameLength, MyNameLength
 소문자로 시작 : 변수, 함수
 대문자로 시작 :  클래스, 구조체, 열거형, 익스텐션

 *****가독성***** 중요하다!!!
 추천 도서 : 클린코드

 코드의 이름을 지을 때 영문법의 어순을 따른다.
 >> 영어 : 주어 - 동사 - 목적어 gotoSchoolToday
    한국어: 주어 - 목적어 - 동사 todaySchoolGoto
 */

// 변수를 선언할 때 값(초기값)을 함께 준다.
var myInt : Int = 10 ///메모리공간

// 변수 선언시에는 값을 주지 않고, 나중에 설정
var myFloat : Float
myFloat = 3.14

// 변수 여러개
var myInt1, myInt2, myInt3 : Int
myInt1 = 10
myInt2 = 20
myInt3 = 30

// 상수의 선언
// let [상수이름] : 타입(자료형)

let myName : String = "은섬"
// myName = "사야"
// 상수의 용도 : 고정된 값을 보장하기 위해 ex) 원주율, 중력가속도






