//ex01
import UIKit

/*
 while문
 초기화
 while 조건문
 {
    수행문...
    증감문
 }
 */

var index = 0
while index < 10 {
    
    print( index )
    index += 1
    
}

// break : 반복문 탈출.
// continue : 반복문 진행...

// 무한반복문
while true {
    print( index )
    index += 1
    if index > 100 {
        break
    }
    
}

for i in 1...100 {
    if i % 2 == 0 { //2의 배수
        continue
    }
    print( i )
}
/*
 repeat-while문
 repeat {
    수행문...
    증감문
 } while 조건문
 
*/

var index2 = 0
repeat {
    print( index2 )
    index += 1
} while index2 < 100

// 이중 for문 : for문 안에 for문 들어감.
// 구구단
for i in 2...9 {
    for j in 1...9 {
        print("\(i)*\(j)=\(i*j)")
    }
}
// 다중 for문에서 한번에 루프를 빠져나가고 싶을 때
// 레이블을 사용한다.

OUTER: for i in 1...10 {
    for j in 1...100 {
        if i > 3 {
            break OUTER
        }
        print("\(i), \(j)")
    }
}
