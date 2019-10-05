//ex09
import UIKit

// 반복문
// for문 while문 repeat-while문

// for문
for i in 1...10 {
    print( i )
}

for i in 0..<100 {
    print( i )
}

for i in (0..<100).reversed() {
    print( i )
}

for i in stride(from: 0, to: 100, by: 2) {
    print( i )
}

var arrayInt = [1,2,3,4,5]
for i in arrayInt {
    print( i )
}

// 딕셔너리 Dictionary
let persons = ["hi":50, "bye":60, "hell":80]
for (a, n) in persons {
    print( a,"/",n )
}
