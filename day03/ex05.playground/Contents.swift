import UIKit

/*
 열거형(Enum)
 
 데이터 상수를 정의할 때, 숫자로 기억하기보다 문자열로 기억하기 쉽다.
 가위바위보 게임을 만들 때, 가위0 바위1 보2 정의한다.
 가위=0으로 기억하기 보다. Enum의 Scissors로 정의하면 알기 쉽다.
 
 자바나 c에서는 단순배열이지만
 스위프트에서는 클래스처럼 확장됨.
 
 */

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day : Weekday = Weekday.mon //가독성이 좋아진다. 고효율. 디버깅용이. 시간절약~~
day = Weekday.sat
day = .sun  // 타입이 명확하면, Enum이름을 생략가능하다.

// switch case문과 Enum 연동가능
switch day {
case .mon, .tue, .wed, .thu :
    print("월화수목")
case .fri, .sat :
    print("금토")
case .sun:
    print("일")
}

enum Hero : Int {
    case Ironman = 0
    case Spiderman = 1
    case Hulk // 2값이 들어갈 것으로 예상됨.
}
print(Hero.Ironman) //문자열로 출력
print(Hero.Ironman.rawValue)    //숫자로 출력
print(Hero.Hulk) //문자열로 출력
print(Hero.Hulk.rawValue)    //숫자로 출력

// 정수값을 주고 열거형 변수로 선언할 수 있다.
var myHero : Hero? = Hero(rawValue: 5)
print(myHero)


//nil인 옵셔널변수를 안전하게 제어하려면, 옵셔널 바인딩을 이용한다.
if let hero = myHero {
    print("nil아님")
}else{
    print("nil")
}

enum Month {
    case jan, fab, mar
    case apr, may, jun
    case jul, aug, sep
    case oct, nov, dec
    
    func printMonth(){
        switch self {
        case .jan, .fab, .mar:
            print("123")
        case .apr, .may, .jun:
            print("456")
        case .jul, .aug, .sep:
            print("789")
        case .oct, .nov, .dec:
            print("101112")
        }
    }
}

Month.apr.printMonth()
