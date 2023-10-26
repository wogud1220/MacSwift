import Swift

//========================================================================
// quiz 1 (각 ??? 구현 : 1점 (총 10점))
//========================================================================
var str: String = "joe";
var arr: Array<Any> = [20000814,"abc@smu.ac.kr"]
var dic: Dictionary<Int, Any>
var tpl: (name: String, info: Any, score: Any)


str = "joe"
arr = [20000814, "abc@smu.ac.kr"]
dic = [1011: 99.3, 1012: "pass", 1013: "fail"]

// 변수 tpl이 튜플 (name: "joe", info: [20000814, "abc@smu.ac.kr"], score: [1011: 99.3, 1012: "pass", 1013: "fail"]"])의 값을 갖도록 line 6, 7, 8, 9에서 ???로 표시된 부분 구현
tpl = (name: str, info: arr, score: dic)

// 튜플 tpl이 (name: "joe", info: [20000814, "joe@smu.ac.kr"], score: [1011: 99.3, 1012: "pass", 1013: "fail"])와 같이 변형되도록 아래의 line 19에서 ???로 표시된 부분 구현
arr[1] = "joe@smu.ac.kr"
tpl = (name: str, info: arr, score: dic)
// 튜플 tpl이 (name: "joe", info: [20000814, "joe@smu.ac.kr", "male"], score: [1011: 99.3, 1012: "pass", 1013: "fail"])와 같이 변형되도록 아래의 line 22에서 ???로 표시된 부분 구현
arr.append("male")

// 튜플 tpl이 (name: "joe", info: [20000814, "male"], score: [1011: 99.3, 1012: "pass", 1013: "fail"])와 같이 변형되도록 아래의 line 25에서 ???로 표시된 부분 구현
arr.remove(at: 0)

// 튜플 tpl이 (name: "joe", info: [20000814, "male"], score: [1011: 99.3, 1012: "pass", 1013: "pass"])와 같이 변형되도록 아래의 line 28에서 ???로 표시된 부분 구현

dic[1013]="pass"

// 튜플 tpl이 (name: "joe", info: [20000814, "male"], score: [1011: 99.3, 1012: "pass", 1013: "pass", 1014: 99.5])와 같이 변형되도록 아래의 line 31에서 ???로 표시된 부분 구현
dic = [1011: 99.3, 1012: "pass", 1013: "fail", 1014: 99.5]


// 튜플 tpl이 (name: "joe", info: [20000814, "male"], score: [1011: 99.3, 1012: "pass", 1013: "pass"])와 같이 변형되도록 아래의 line 34에서 ???로 표시된 부분 구현
dic = [1011: 99.3, 1012: "pass", 1013: "pass"]

print("tpl: \(tpl)")
// 실행결과: tpl: (name: "joe", info: [20000814, "male"], score: [1013: "pass", 1012: "pass", 1011: 99.3])
