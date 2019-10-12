import UIKit


// 클로저의 변형 (유연성)

// 일반함수 : 클로저변수를 매개변수로 받음.
func calc(a:Int,b:Int,method:(Int,Int) -> Int) -> Int {
    return method(a,b)
}

// 일반함수 실행
var result2 = calc(a: 10, b: 20, method:
{
    (a:Int, b:Int) -> Int in
    return a+b
}
)

// 후행 클로저(Trailing Closure) : 함수를 닫고 뒤에 따라오는,,,
var result = calc(a:10, b:20)
{
    (a:Int, b:Int) -> Int in
    return a+b
}

// 반환형 생략가능(일반,후행 둘 다)
result = calc(a:10, b:20)
{
    (a:Int, b:Int) in   // 리턴형 생략
    return a+b  // 타입추정이 가능
}

// 매개변수 생략 가능
result = calc(a:10, b:20)
{
    return $0 + $1  // $0:첫번째매개변수,반환형은 타입추정
    
}
