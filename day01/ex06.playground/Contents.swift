//ex06
import UIKit

// 옵셔널 Optional =>  nil chk
var myNum1 : Int = 10 // 실제 값을 초기화한 것으로  nil 아님.
var myNum2 : Int? = nil // 옵셔널 변수 : nil일 수도 있다.

print( myNum1 )
// print( myNum2 )
// myNum2가 nil, 바로 참조하면 exception 발생.
// 옵셔널 바인딩 (if let구문)을 사용하여, nil체크
if let newNum = myNum2 {
    print( "newNum > nil아님" )
}else{
    print( "newNum > nil임" )
}

// 언래핑(Unwrapping)
// print( myNum2! )    // 느낌표는 nil이 아니라는 확신을 하고 강제로 값을 꺼냄

// 연습문제
// 옵셔널 문자열 변수 myStr에 "Hello"라는 값을 할당하고
// 옵셔널 바인딩(if let)을 활용하여 출력하시오.
// 강제 언래핑(!연산자)를 활용하여 출력하시오.

var myStr : String? = "Hello"

if let chkStr = myStr {
    print( myStr! + "> nil아님" )
}else{
    print( "nil" )
}


