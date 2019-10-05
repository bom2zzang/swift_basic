//ex04
import UIKit

// 기본자료형 (타입)
// Bool, Int, UInt, Float, Double, Character, String

// Bool - 논리형 true, false
var myBool : Bool = true

// Int - 정수형 64bit OS에서 8byte
//            32bit OS에서 4byte
var myInt : Int = 10

// UInt - 정수형 마이너스(음수)값이 없이 0부터 시작하는 정수값을 표현
// 사용하는 이유 : 값이 음수가 없을 때. Int의 2배로 값을 표현할 수 있다.
var myUInt : UInt = 20

//Float(4byte), Double(8byte) 실수값
var myFloat : Float = 3.14
var myDouble : Double = 123.456

// Character - 문자 하나 저장 (Unicode:국제문자코드표)
// 한글 가 : 16진수 0xAC000
// 코드표 : ASCII, EUC-KR(완성한글), Unicode
var myChar : Character = "가"

// String - 문자열 저장
var myString : String = "대한"
// 문자열 연결 연산자 + (연산자 좌우 한곳이 문자열이면 문자열 연산자가 됨)
myString = myString + "민국"
print( myString )

// 여러줄 문자열 연결 """ ~ """
var multiString = """
여러줄의
문자열을
연결한다
"""

//\n은 개행문자(줄바꿈)
