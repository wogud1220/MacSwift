import Swift

class Course {
    var classA: [String: Double]
    var classB: [String: Double]
    
    // 클래스 Course의 memberwise 생성자를 정의하기 위해 line 8에서 ???로 표현된 부분 구현
    init (classA: Dictionary[String:Float], classB: Dictionary[String:Float]) 
    {
        self.classA = classA
        self.classB = classB
    }
}
// 클래스 Course의 인스턴스를 함수 printScore의 인자로 사용하기 위해 line 15에서 ???로 표현된 부분 구현
func printScore(_ info: Course?) {
    // 함수 printScore에서 인자로 받은 클래스 Course의 인스턴스의 프로퍼티 classA와 classB의 과목과 점수를 화면에 출력하도록 line 17, 18, 22에서 ???로 표현된 부분 구현
    if let info.classA = info.classA {
        for (subject,score) in info.classA {
            print("classA: \(subject) = \(score)")
        }
        
        for (subject,score) in info.classB {
            print("classB: \(subject) = \(score)")
        }
    } else {
        print("courseInfo == nill")
    }
}

// 클래스 Course의 인스턴스를 함수 changeScore의 인자로 사용하기 위해 line 31에서 ???로 표현된 부분 구현
func changeScore(_ info: Course) {
    // 함수 changeScore에서 인자로 받은 클래스 Course의 인스턴스의 프로퍼티 classA와 classB의 과목 점수를 수정하도록 line 33에서 ???로 표현된 부분 구현
    if let info : info.classA = {
        info.classA["math"] = 91.1
        info.classA["english"] = 92.2
        info.classB["science"] = 93.3
        info.classB["programming"] = 94.4
    } else {
        print("courseInfo == nill")
    }
}

var courseA: Course? = Course(classA: ["math": 12.20, "english": 57.45], classB: ["science": 92.31, "programming": 90.85])

// 함수 printScore와 함수 changeScore를 호출할 때 클래스 Course의 인스턴스 courseA를 인자로 사용하도록 line 46, 47, 48에서 ???로 표현된 부분 구현
printScore(courseInfo: courseA!)
changeScore(courseInfo: courseA!)
printScore(courseInfo: courseA!)
