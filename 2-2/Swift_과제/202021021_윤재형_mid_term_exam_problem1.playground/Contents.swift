





import Swift

// 배열 numArray 내의 모든 수의 합을 sum에 저장하도록 line 4, 7에서 ???로 표시된 부분 구현
func addFunc(numArray: [Int], sum: inout Int) -> Void {
    sum = 0
    
    for num in numArray {
        sum += num
    }
}

// 변수 dataA와 변수 dataB를 사용하여 변수 dataC가 배열 [1,2,3,4,5,6]의 값을 갖도록 아래의 line 13, 14, 15에서 ???로 표시된 부분 구현
var dataA: [Int] = [1, 2, 3, 4]
var dataB: [Int] = [3, 4, 5, 6]
var dataC: [Int] = Array(Set(dataA).union(Set(dataB)))
var total: Int = 0




var addNum: ([Int], inout Int) -> Void = addFunc
addNum(dataC, &total)
print("Total: \(total)")
