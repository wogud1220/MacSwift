//import UIKit
//import Swift
class Person {
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