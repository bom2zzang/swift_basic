import UIKit

/*
 콜렉션 Collection
    *배열 - Array(배열+리스트) : 자바의 ArrayList
           순서가 있음
    *딕셔너리 - Dictionary   : 자바의 Map
              키+값(key,value), 순서가 없음
    *집합 - Set             : 자바의 Set
           데이터 중복 허용 안됨. 순서가 없음
 */

// Array : 같은 타입의 데이터가 나란히 나열된 형태의 자료형
//          Int배열, String배열, 구조체배열, 클래스배열
var myArray : Array<Int> = Array<Int>()
myArray.append(10)
myArray.append(20)
myArray.append(30)
print(myArray)
dump(myArray)
print(myArray[0])
print(myArray[1])
print(myArray[2])

// 포함여부
myArray.contains(20)
// 수
myArray.count
// 삭제
myArray.remove(at: 0)
print(myArray)
// 요소추가, 위치를 지정할 수 있다.
myArray.insert(50, at: 1)

// 배열을 선언하는 방법들
var myArray2 : Array<Int> = Array<Int>()
var myArray3 : Array<Int> = []      // 2순위
var myArray4 : [Int] = []           // 1순위
var myArray5 = Array<Int>()         // 타입추정
var myArray6 = [Int]()              // 타입추정

myArray4.append(100)
myArray4.append(200)

//빈 배열인지?
if myArray4.isEmpty {
    print("비어있음")
}else{
    print("비어있지않음")
}

for myInt in myArray4 {
    print(myInt)
}

// 연습문제
// names라는 문자열타입 배열을 만들고
// "tom" 추가
// "john" 추가
// "hana" 추가
// 배열의 수
// 모든 요소 출력
// john만 출력
// tom포함 true false출력
var names : [String] = []           // 1순위
names.append("tom")
names.insert("john", at: 1)
names.append("hana")

print(names.count)
print(names)
for name in names {
    print(name)
}
print(names[1])
print(names.contains("tom"))

// 배열요소의 인덱스를 가져오기
if let index = names.firstIndex(of: "john"){
    print("john의 위치는",index)
}


// NS계열 : NSArray 수정불가, NSMutableArray 수정가능
// Swift계열 : Array 수정가능

// NSArray to Array
var myNSArray = NSArray(objects:"a","b","c")
var myNSMultableArray = NSMutableArray(array: myNSArray)
if let mySwiftArray = myNSMultableArray as NSArray as? [String] {
    print(mySwiftArray)
}

// 배열의 값 비교
let myArray7 = [1,2,3,4,5] //타입추정에 의해 [Int]
let myArray8 = [1,2,3,4,50]
if myArray7 == myArray8 {
    print("같네")
}else{
    print("다르네")
}

// 배열의 값을 치환
var myArray9 = ["A","B","C"]
myArray9.replaceSubrange(0..<2, with: ["X","Y"])
print(myArray9)

// 배열의 값을 sort
var myArray10 = ["A","C","B"]
let sortedArray = myArray10.sorted()
let reverseSortedArray = Array(myArray10.sorted().reversed())

// 특정범위에서 값을 추출해서 배열로 저장
let rangeArray = sortedArray[0...1]


// 딕셔너리 Dictionary
// ["key1":value1, "key2":value2, ...]

let myDic = ["key1":"value1","key2":"value2"] // 타입추정에 의해서 [String:String]
print(myDic)

// 요소에 접근
print(myDic["key1"]!) // 키로 값을 가져온다.

var nameDic = ["name1":"김김","name2":"이이","name3":"박박"]  // 순서(인덱스)가 없음
nameDic["name4"] = "최최"
print(nameDic)

// 요소 출력
for (k, v) in nameDic {
    print(k)
    print(v)
}

// 요소 삭제
nameDic.removeValue(forKey: "name3")
print(nameDic)

// 요소 수
nameDic.count

// NS계열 : NSDictionary 수정불가 NSMultalbeDictionary 수정가능
// Swift계열 : Dictionary


