//ex07
import UIKit
/*
 연산자 Operator
 산비논대,,,,,
 산술 : + - * / %(나머지)
 비교 : == != > < <= >=
 논리 : &&(AND) ||(OR)
 대입 : =(오른쪽값을 왼쪽에 대입) += -= *= /=
*/

// 산술연산자
// 결과는 값으로 나옴.
var myNum : Int = 10
print( myNum / 3 )  // 몫
print( myNum % 3 )  // 나머지

// 비교연산자
// 결과는 true/false로 나옴.

// 논리연산자
// 결과는 true/false로 나옴.
// &&(AND) 연산 true && true => true
//             true && false => false
//             false && true => false
//             false && false => false
// 둘 다  true일때만 true
// ||(OR) 연산 true && true => true
//            true && false => true
//            false && true => true
//            false && false => false
// 둘 중에 하나만 true여도 true
// !(NOT) 연산 false => true
//            true => false

// ++ -- 연산자는 사라짐
var myInt : Int = 0
//myInt++
myInt += 1
myInt -= 1


// 연습문제
// 정수형 변수 23456
// 나머지 연산자와 나누기 연산자를 이용하여
// 만, 천, 백, 십, 일의 자리 숫자를 구하시옹...

var testNum : Int = 23456

var num10000 : Int = testNum/10000 // 몫 2 나머지 3456
var num1000 : Int = (testNum%10000)/1000
var num100 : Int = (testNum%1000)/100
var num10 : Int = (testNum%100)/10
var num10 : Int = (testNum%10)/1


// 물음표 연산자 ?: 삼항 연산자
var myBool : String = true ? "true" : "false"

// 쌍물음표 연산자 ??: nil이면 대입되는 값 연산자
let name : String? = nil
print( name ?? "홍" )

// 범위 연산자
// 시작값 ... 종료값 으로 구성
let range = 0...3
dump( range )
let range2 = 0..<3
dump( range2 )

for index in range2 {
    print( index )
}

for index in range2.reversed() {
    print( index )
}

