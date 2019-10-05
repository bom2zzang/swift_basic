//ex08
import UIKit

// 조건문
// if문 (소괄호 없음, 중괄호는 필수)
var num : Int = 0
if num < 10 {
    print("10보다 작음")
} else {
    print("10보다 큼")
}

// if else if문
if num > 10 {
    print("10보다 큼")
} else if num == 5 {
    print("5")
} else {
    print("그 외")
}

// 난수 발생(임의의 수)
let randomNum : UInt32 = arc4random_uniform(10)
// 0~9까지 랜덤수 발생
print( randomNum )


// 연습문제
// 20~50까지의 랜덤수를 발생시켜
// 30보다 작으면 "30보다 작음"
// 40보다 작으면 "40보다 작음"
// 50보다 작으면 "50보다 작음" 출력

let randomNum2 : UInt32 = arc4random_uniform(31)+20
print(randomNum2)

if randomNum2 < 30 {
    print("30보다 작")
} else if randomNum2 < 40 {
    print("40보다 작")
} else if randomNum2 < 50 {
    print("50보다 작")
}

// guard let문, guard else문
func myFunc() {
    let myString0 : String? = "hihi"
    guard let newStr = myString0, myString0 == "hihi"
    else{
        print("올바른 이름이 아니")
        return
    }
}
myFunc()


// swich case 문
let randomNum3 : UInt32 = arc4random_uniform(10)
print(randomNum3)

switch randomNum3 {
case 0:
    print("0")
case 1...5:
    print("1,2,3,4,5")
case 6..<10:
    print("6,7,8,9")
default:
    print("그 외의 값", randomNum3)
}

var name : String = "hihi"
switch name {
case "hihi":
    print("hhihihi")
default:
    print("noihihihi")
}
