import UIKit

/*
 Closuer : 자바의 람다식과 유사함.
 코드 뭉치(함수)를 변수로 만들어서, 매개변수로 전달이 가능하다.
 변수로 만들어진 코드뭉치를 실행할 수 있다.
 함수형 언어의 장점 - 비동기처리가 가능하다.
 
 { (매개변수 목록)  -> 반환형 in
    실행문들...
 }
 */

var sum : (Int, Int) -> Int =
{
    (a:Int,b:Int) -> Int in
    return a+b
}
print(sum(10,20))

var sub : (Int, Int) -> Int =
{
    (a:Int, b:Int) -> Int in
    return a-b
}
print(sub(10,5))

func calc(a:Int,b:Int,method:(Int,Int)->Int) ->Int {
    return method(a,b) // 클로저변수를 실행함.
    
}
var result = calc(a:10,b:20,method: sum)
var result2 = calc(a:30,b:20,method: sub)
print(result)

// 함수에 클로저 본체를 바로 선언해서 사용할 수 있다.
var result3 = calc(a: 10, b: 20, method:
{
    (a:Int,b:Int) -> Int in
    return a*b
}
)

// 클로저 사용 예2

// 일반함수
func printMyName(name1:String, name2:String){
    print("name1: \(name1),name2: \(name2)")
}
printMyName(name1: "bb", name2: "ss")

// 클로저변수로 선언
var myFunc : (String, String) -> Void = {
    (name1:String, name2:String) -> Void in
    print("name1: \(name1),name2: \(name2)")
}
myFunc("hh","yy")

// 일반함수를 클로저변수로 선언한다.
var myFunc2: (String, String) -> Void =
    printMyName(name1:name2:)
myFunc2("aa","ll")

// 클로저변수를 매개변수로 전달한다.
func runMyfunc(myFunc:(String,String) -> Void) {
    myFunc("민석","민석이")
}
runMyfunc(myFunc: myFunc2)
