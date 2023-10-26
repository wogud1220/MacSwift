

struct CoordinatePoint {
    var x: Double = 0
    var y: Double = 0
}
class Position {
    var name: String? = nil
    var point: CoordinatePoint? = nil
    // ?? ????? instanceCount? ???? ?? line 12?? ???? ??? ?? ??
    static var instanceCount: Int = 0
    // Position ???? ???(initializer)? ???? ?? line 15?? ???? ??? ?? ??
    init?(name: String?, point: CoordinatePoint?){
        if let nm = name, let pt = point {
            if nm.isEmpty || pt.x < 0 || pt.y < 0 {
                print("Instance is not generated!")
                return nil
            } else {
                // Position ???? ??? ??? reset ???? ???? ?? line 22?? ???? ??? ?? ??
                self.reset(newName: nm, newPoint: pt)
                // ?? ????? instanceCount? ??? 0? ?? ??? Position ???? ????? ??? ??? 1? ????? line 24?? ???? ??? ?? ??
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
        // Position ???? ????? name? point ????? ??? ???? ?? line 49?? ???? ??? ?? ??
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
}

var pointA: CoordinatePoint = CoordinatePoint(x: 2.3, y: 3.4)
var pointB: CoordinatePoint = CoordinatePoint(x: 4.5, y: 5.6)

// Position ???? ????? ???? ?? line 71, 72, 73?? ???? ??? ?? ??
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

// printInstanceCount ???? ???? ?? line 85?? ???? ??? ?? ??
Position.printInstanceCount()
