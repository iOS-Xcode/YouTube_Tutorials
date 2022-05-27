
class SuperClass {
    func superMethod() -> String {
        return "This is superMethod"
    }
}

class ChildClass: SuperClass {
    override func superMethod() -> String {
        print(super.superMethod())
        return "This is childMethod"
    }
}

var childClass = ChildClass()
childClass.superMethod()
