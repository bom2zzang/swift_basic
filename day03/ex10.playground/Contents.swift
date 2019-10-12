import UIKit
/*
 익스텐션(Extension) : 확장
 
 클래스의 상속    <->    익스텐션
 수직확장               수평확장(함수나 변수의 수가 증가)
 클래스만 지원           클래스,구조체,열거형,자료형 지원
 재정의 가능            재정의 불가능(기존에 있는 것은 터치 불가)
 */

extension Int {
    var isEven : Bool { // 짝수인가를. t/f 로 반환
        get {
            return self % 2 == 0
        }
    }
    var isOdd : Bool {  // get키워드 생략가능
        return self % 2 == 1
    }
}

var myInt : Int = 10
myInt.isEven
myInt.isOdd
10.isEven
10.isOdd

// 익스텐션으로 함수 추가
extension Int {
    func muliply(by n:Int) -> Int {
        return self * n
    }
}

myInt.muliply(by: 2)
10.muliply(by: 3)
