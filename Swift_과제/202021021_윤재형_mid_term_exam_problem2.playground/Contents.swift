

struct CoordinatePoint {
    var x: Double = 0
    var y: Double = 0
}
class Position {
    var name: String? = nil
    var point: CoordinatePoint? = nil
    // 타입 프로퍼티인 instanceCount를 선언하기 위해 line 12에서 ???로 표시된 부분 구현
    static var instanceCount: Int = 0
    // Position 클래스의 생성자(initializer)를 정의하기 위해 line 15에서 ???로 표시된 부분 구현
    init?(name: String?, point: CoordinatePoint?){
        if let nm = name, let pt = point {
            if nm.isEmpty || pt.x < 0 || pt.y < 0 {
                print("Instance is not generated!")
                return nil
            } else {
                // Position 클래스의 생성자 내에서 reset 메소드를 호출하기 위해 line 22에서 ???로 표시된 부분 구현
                self.reset(newName: nm, newPoint: pt)
                // 타입 프로퍼티인 instanceCount는 초기에 0의 값을 가지며 Position 클래스의 인스턴스가 생성될 때마다 1씩 증가되도록 line 24에서 ???로 표시된 부분 구현
                Self.instanceCount = Self.instanceCount + 1    //self.instanceCount
            }
        } else {
            print("Instance is not generated!")
            return nil
        }
    }
   
    var accessPoint: CoordinatePoint? {
        get {
            return self.point
        }

        set {
            self.point = newValue
        }
    }

    func reset(newName: String?, newPoint: CoordinatePoint?) {
        self.name = newName
        self.point = newPoint
    }

    func printNameAndPoint() {
        // Position 클래스의 인스턴스의 name과 point 프로퍼티를 화면에 출력하기 위해 line 49에서 ???로 표시된 부분 구현
        if let nm = self.name, let pt = self.point {
            print("name: \(nm)")
            print("position: (\(pt.x), \(pt.y))")
        } else {
            print("name or point is equal to nil")
        }
    }
    
    static func printInstanceCount() {
        if Position.instanceCount > 0 {
            print("Number of generated instances: \(Position.instanceCount)")
        } else {
            print("instanceCount is equal to nil")
    }
}

/*if Position.instanceCount > 0 {
            print("Number of generated instances: \(Position.instanceCount)")
        } else {
            print("instanceCount is equal to nil")
        }*/

var pointA: CoordinatePoint = CoordinatePoint(x: 2.3, y: 3.4)
var pointB: CoordinatePoint = CoordinatePoint(x: 4.5, y: 5.6)

// Position 클래스의 인스턴스의 생성하기 위해 line 71, 72, 73에서 ???로 표시된 부분 구현
let nobody: Position? = Position(name: nil, point: nil)
let kim: Position? = Position(name: "Kim", point: pointA)
let lee: Position? = Position(name: "Kim", point: pointA)

if let person = kim {
    person.accessPoint = pointB
    person.printNameAndPoint()
}

if let point = lee?.accessPoint {
    print("Lee's position: (\(point.x), \(point.y))")
}

// printInstanceCount 메소드를 호출하기 위해 line 85에서 ???로 표시된 부분 구현
Position.printInstanceCount()