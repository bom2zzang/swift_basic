import UIKit

/*
 assert와 guard
 assert(검증, 확인)
 guard(보호), Early Exit
 */

// Assert : 검증을 통해서 코드가 통과하는지 조사 가능
var myInt : Int = 10

// 10 이어야만 코드가 통과하도록
assert(myInt == 10, "10 아니라서 코드 중단할게요.")

func myFuncAssert(age:Int?) {
    assert(age != nil, "age nil")
    assert(age! >= 0 && age! < 130, "age  정상범위 벗어났" )

    print("나이는 \(age!)입니다.")
}

myFuncAssert(age: 50)
//myFuncAssert(age: -5)
//myFuncAssert(age: nil)


// guard : 빠른 귀환 ( 조건이 맞지 않으면 빠른 return)
func myFuncGuard(age:Int?){
    guard let newAge = age, newAge < 130, newAge >= 0 else {
        return
    }
    
    print("나이는 \(age!)입니다.")
}

myFuncGuard(age: 50)
myFuncGuard(age: -5)
myFuncGuard(age: nil)
