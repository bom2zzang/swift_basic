//ex03
import UIKit

//출력문 : print, dump, debugPrint
var myName : String = "은섬"

// 값만 출력
print( myName )

// 값과 주변정보 출력
dump( myName )

// 값과 타입정보 출력
debugPrint( myName )


class Student {
    var name = "사야"
}

var objStudent = Student()
dump( objStudent )


// 문자열 보간 Interpolation
var age = 10
// 문자열 데이터는 쌍따옴표로 표현한다 ""
"저의 나이는 \(age)입니다"


