//day03
import UIKit

/*
 배열
 딕셔너리
 집합
 day02  참고
 */

// 집합 Set : 데이터의 중복을 허용하지 않음.
var mySet : Set<Int> = Set<Int>()
mySet.insert(10)
mySet.insert(20)
mySet.insert(30)
print(mySet)
mySet.insert(30)    // 데이터중복 > inserted false
print(mySet.isEmpty)
print(mySet.contains(10))


var mySet2 : Set<Int> = [10,20,30]
var mySet3 : Set<Int> = [30,40,50]
// 합집합
var setSum = mySet2.union(mySet3)
// 교집합
var setCross = mySet2.intersection(mySet3)
//차집합
var setSub = mySet2.subtracting(mySet3)


/*
 갑자기 배열 연습
 구조체(클래스)를 배열에 넣고 빼기.
*/
struct MyStruct {
    var name = "bb"
    var age = 30
    func myFunc(){
        print("myFunc()")
    }
}
var myStructArray : Array<MyStruct> = []
var myStruct1 = MyStruct() //struct를 객체로 만듦(인스턴스화 한다)
myStruct1.name = "tt"
myStruct1.age = 40
var myStruct2 = MyStruct()
myStruct2.name = "dd"
myStruct2.age = 10
myStructArray.append(myStruct1)
myStructArray.append(myStruct2)

var item1 = myStructArray[0]
print(item1.name)
print(item1.age)
var item2 = myStructArray[1]
print(item2.name)
print(item2.age)


// NS계열 : NSSet 변경불가, NSMutableSet 변경가능
// Swift계열 : Set let, Set var


