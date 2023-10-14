class AClass {
    static func staticTypeMethod() {
        print("AClass static type method") }
    class func classTypeMethod() {
        print("AClass class type method")
    }
    
}
class BClass: AClass { /*
                        override static func staticTypeMethod() { print("overriding AClass static type method")
                        } */
    override class func classTypeMethod() {
        print("overriding AClass class type method")
    } }
AClass.staticTypeMethod()
AClass.classTypeMethod()
BClass.classTypeMethod()
