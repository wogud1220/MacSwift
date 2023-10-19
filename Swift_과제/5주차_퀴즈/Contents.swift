//import UIKit
import Swift
class Person {             // 클래스 설명
    var height: Float = 0.0
    var weight: Float = 0.0
    init() {
        self.height = 10.0
        self.weight = 20.0
    }
    init(height: Float, weight: Float) { 
        self.height = height
        self.weight = weight
    }
    init(a: Float) {
        self.height = a
        self.weight = a
    }
    deinit {
        print("Person class instance is deinitialized")
} 
}
var aPerson: Person = Person() // 기본 생성자를 통한 인스턴스 초기화 aPerson.height = 123.4
aPerson.weight = 123.4
var bPerson: Person = Person(height: 123.4, weight: 123.4) // memberwise 생성자를 통한 인스턴스 초기화 var cPerson: Person = Person(a: 123.4) // 사용자 정의 생성자를 통한 인스턴스 초기화
var dPerson: Person? = Person()
dPerson = nil





    // 구조체는 값을 복사하는 것.
    
struct BasicInformation {          
    let name: String
    var age: Int
}
var kimInfo: BasicInformation = BasicInformation(name: "Kim", age: 99)
kimInfo.age = 100
var friendInfo: BasicInformation = kimInfo
print("kim age: \(kimInfo.age)")
print("friend age: \(friendInfo.age)")
/* 실행 결과
kim age: 100 friend age: 100 */
kimInfo.age=8888
friendInfo=kimInfo  //이렇게 하면 값 따라감, 계속해서 갱신해줘야함
//friendInfo.age = 999
print("kim age: \(kimInfo.age)")
print("friend age: \(friendInfo.age)")
/* 실행 결과
kim age: 100 friend age: 999 */




                    //클래스의 참조 복사
var kim: Person = Person()
var friend: Person = kim
var lee: Person = Person()
print("kim height: \(kim.height)")
print("friend height: \(friend.height)")
// 참조 복사
print("refcomparison (friend === kim): \(friend === kim)")
print("refcomparison (friend === lee): \(friend === lee)")
print("refcomparison (friend !== lee): \(friend !== lee)")

// 참조 비교 // 참조 비교 // 참조 비교
/* 실행 결과
kim height: 0.0
friend height: 0.0
ref comparison (friend === kim): true ref comparison (friend === lee): false ref comparison (friend !== lee): true */
friend.height = 185.5
print("kim height: \(kim.height)")
print("friend height: \(friend.height)")
print("lee height: \(lee.height)");
/* 실행 결과
kim height: 185.5 
friend height: 185.5
lee height: 0.0 */



func changeBasicInfo (_ info: BasicInformation)->Int {
    var copiedInfo: BasicInformation = info
    copiedInfo.age = 1
    return copiedInfo.age
}
func changeBasicInfo(_ info: Person) {
    info.height = 155.3
}
print("함수로 리턴받은 킴의 age: \(changeBasicInfo(kimInfo))")
print("kim age: \(kimInfo.age)")

//kiminfo는 구조체 변수
//kim은 클래스 변수

/* 실행 결과 kim age: 100 */
changeBasicInfo(kim)
print("kim height: \(kim.height)")
/* 실행 결과
kim height: 155.3 */

// Optional binding 가능 
var myName:String! = "Kim"
print(myName)
// 실행 결과: Optional("Kim")
 print(myName + " and Park")
// 실행 결과: Kim and Park 
myName = nil
// Optional binding 가능 
if let name = myName {
    print("My name is \(name)")
} else {
    print("My name == nil")
}
// 실행 결과: My name == nil

var cPerson: Person! = Person()
cPerson.height=11111
print(cPerson.height)









if someNumber != nil {
    number = someNumber!
} 
else {
    number = 10 }
print(number)
// 실행 결과: 10


// 2. nil coalescing operator (??)를 이용한 경우 
var someNumber: Int? = nil
var number: Int = 0
// nil check

// forced unwrapping (강제 추출)
number = someNumber ?? 10 // A ?? B: A가 nil이 아니면 A의 unwrapping된 형태를, nil이면 B를 반환 
print(number)
// 실행 결과: 10