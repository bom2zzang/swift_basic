import UIKit


/*
 문자와 문자열
 String 타입 : 스위프트 구조체 타입
 NSString 타입 : NS계열 클래스 타입
 */

var myString0 : String = "hi"
// 다중문자열
var multiString : String =  """
다중
문자열
입니다
"""

// 문자열의 길이
var myName : String = "hihi"
print(myName.count)

// 문자열의 비교
let str1 : String = "apple"
let str2 : String = "banana"

if str1 == str2 {
    print("같")
}else{
    print("다")
}

let result = str1.compare(str2)
switch result {
case .orderedSame:
    print("같음")
case .orderedAscending, .orderedDescending:
    print("다름")
default:
    print("그외")
}

// 문자열의 연결
print(str1+str2)
print(str1.appending(str2))

// 문자열에서 특정 문자 하나를 가져올 때
let text = "abcdefghihi"
let index1 : String.Index  = text.index(text.startIndex,offsetBy:0)
let char : Character = text[index1]

for ch in text {
    print(ch)
}

var index2 = 0
for ch in text {
    if index2 == 1 {
        print(index2)
        print(ch)
    }
    index2 += 1
}

let char2 : Character = "A"
//let char3 : Character = "ABD" //error
let char4 = Character("F")

//문자열에 추가
var myName2 : String = "saya"
myName2.insert("!",at:myName2.endIndex)

myName.insert(contentsOf:"My",at:myName2.index(myName2.startIndex, offsetBy:0))

let myName3 = "My"+myName2

// 형변환 NSString => String
let myNSString : NSString = "ohora"
// => 두가지 방법이 있다.
let myString : String = String(myNSString)
let myString2 : String = myNSString as String

// 문자열의 치환(바꾸기)
var myString4 : String = "Macintosh HD"
let resultString1 = myString4.replacingOccurrences(of: "HD", with: "?!")

// NSString(변경불가), NSMutableString(변경가능)
// String, String

// 문자열의 삭제
var myString5 : String = "xcode file edit view find navigate editor product debug sourceControl window help"

let resultString2 = myString5.removeAll()
myString5 = "hihihi"

myString5.remove(at:myString5.startIndex)

// 문자 하나를 지움.
var myString6: String = "Swift Programming"
let resultString3 = myString6.remove(at: myString6.startIndex)
print(myString6)

//문자열을 지움
var myString7 : String = "eeeeeecho"
let removeRange = myString7.index(myString7.startIndex,offsetBy:0) ... myString7.index(myString7.startIndex,offsetBy:5)
myString7.removeSubrange(removeRange)

var myString8 : String = "rowBits rowBits rowBits"
var arrayCh : [Character] = []
var index = 0
for ch in myString8 {
    if index > 6 {
        arrayCh.append(ch)
    }
    index += 1
}
let newCharString = String(arrayCh)


// 문자열 검색
let myString9 = "google.com"
if myString9.contains("google"){
    print("있네")
}else{
    print("없네")
}

if let result = myString9.range(of: "google"){
    print("있다")
}else{
    print("없다")
}

// 문자열 분리
let myString10 = "봄,여름,가을,겨울"
let list  = myString10.split(separator: ",")
let list2 = myString10.components(separatedBy: ",")
for ch in list {
    print(ch)
}

// 형변환 문자와 숫자
let myString11 = "123"
let myInt : Int? = Int(myString11)
let myInt2 = 200
let myStringNum : String? = String(myInt2)

// 형변환 숫자
let myFloat = 3.14
let myInt3 : Int? = Int(myFloat)
let myFloat2 : Float? = Float(myInt3!)

//NSNumber - 숫자타입의 데이터를 모두 래핑할 수 있는 클래스
//           Int,Float,Double,Bool
var myBool = true
let boolObject = NSNumber(value:myBool)
var myBool2 = boolObject.boolValue

var intNumber : Int = 10
let intObject = NSNumber(value: intNumber)
var intNumber2 : Int = intObject.intValue

//NSValue - 값 타입, 구조체, 클래스 객체를 모두 래핑할 수 있는 클래스
let rangeValue = NSRange(location: 0, length: 3)
let rangeObject = NSValue(range: rangeValue)
let unboxedValue = rangeObject.rangeValue

