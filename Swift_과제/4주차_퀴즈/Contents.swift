import Swift

// dictionary형 상수 subjects 내의 각 과목에 대한 성적의 합을 totalScore에 저장하도록 line 4에서 ???로 표현된 부분 구현
func addFunc(subjects: [String: Int], totalScore: Int) -> Void {
   var totalScore = 0

    // subjects 내의 각 과목(subject)에 대한 성적(score)의 합을 totalScore에 저장하고 화면에 과목과 성적을 출력하도록 line 8에서 ???로 표현된 부분 구현
    for (subject,score) in subjects {
        print("subject: \(subject) (score: \(score))")
        totalScore += score
    }
    print("Total score: \(totalScore)")
}

// dictionary형 상수 subjects 내의 각 과목에 대한 성적의 합을 totalScore에 저장하도록 line 15에서 ???로 표현된 부분 구현
func addFunc(subjects: [String: Double], totalScore: Double) -> Void {
    var totalScore = 0.0
    
    // subjects 내의 각 과목(subject)에 대한 성적(score)의 합을 totalScore에 저장하고 화면에 과목과 성적을 출력하도록 line 19에서 ???로 표현된 부분 구현
    for (subject,score) in subjects{
        print("subject: \(subject) (score: \(score))")
        totalScore += score
    }
    print("Total score: \(totalScore)")
}

// dictionary형 변수 coursesA는 key와 value가 과목과 해당 과목의 성적(실수)으로 구성됨
var coursesA: [String: Double] = ["math": 12.20, "english": 57.45, "programming": 90.85]
// dictionary형 변수 coursesB는 key와 value가 과목과 해당 과목의 성적(정수)으로 구성됨
var coursesB: [String: Int] = ["math": 12, "english": 57, "programming": 90]
var scoreSumA: Double = 0.0
var scoreSumB: Int = 0

// 함수 addScoreA를 통해 변수 coursesA 내의 모든 과목 성적(실수)의 합을 변수 scoreSumA에 저장하도록 line 33, 34에서 ???로 표현된 부분 구현
var addScoreA: ([String:Double],Double)->() = addFunc
addScoreA(coursesA, 0.0)


// 함수 addScoreB를 통해 변수 coursesB 내의 모든 과목 성적(정수)의 합을 변수 scoreSumB에 저장하도록 line 38, 39에서 ???로 표현된 부분 구현
var addScoreB: ([String:Int],Int)->() = addFunc
addScoreB(coursesB,0)






/*import Swift

// dictionary형 상수 subjects 내의 각 과목에 대한 성적의 합을 totalScore에 저장하도록 line 4에서 ???로 표현된 부분 구현
func addFunc(subjects: [String: Int], totalScore: inout Int) -> Void {
    totalScore = 0

    // subjects 내의 각 과목(subject)에 대한 성적(score)의 합을 totalScore에 저장하고 화면에 과목과 성적을 출력하도록 line 8에서 ???로 표현된 부분 구현
    for (subject, score) in subjects {
        print("subject: \(subject) (score: \(score))")
        totalScore += score
    }
}

// dictionary형 상수 subjects 내의 각 과목에 대한 성적의 합을 totalScore에 저장하도록 line 15에서 ???로 표현된 부분 구현
func addFunc(subjects: [String: Double], totalScore: inout Double) -> Void {
    totalScore = 0.0
    
    // subjects 내의 각 과목(subject)에 대한 성적(score)의 합을 totalScore에 저장하고 화면에 과목과 성적을 출력하도록 line 19에서 ???로 표현된 부분 구현
    for (subject, score) in subjects {
        print("subject: \(subject) (score: \(score))")
        totalScore += score
    }
}

// dictionary형 변수 coursesA는 key와 value가 과목과 해당 과목의 성적(실수)으로 구성됨
var coursesA: [String: Double] = ["math": 12.20, "english": 57.45, "programming": 90.85]
// dictionary형 변수 coursesB는 key와 value가 과목과 해당 과목의 성적(정수)으로 구성됨
var coursesB: [String: Int] = ["math": 12, "english": 57, "programming": 90]
var scoreSumA: Double = 0.0
var scoreSumB: Int = 0

// 함수 addScoreA를 통해 변수 coursesA 내의 모든 과목 성적(실수)의 합을 변수 scoreSumA에 저장하도록 line 33, 34에서 ???로 표현된 부분 구현
addFunc(subjects: coursesA, totalScore: &scoreSumA)
print("Total score: \(scoreSumA)")

// 함수 addScoreB를 통해 변수 coursesB 내의 모든 과목 성적(정수)의 합을 변수 scoreSumB에 저장하도록 line 38, 39에서 ???로 표현된 부분 구현
addFunc(subjects: coursesB, totalScore: &scoreSumB)
print("Total score: \(scoreSumB)")
*/