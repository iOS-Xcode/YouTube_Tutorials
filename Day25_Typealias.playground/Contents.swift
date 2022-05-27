import UIKit

//별칭, 이름을 바꾸는 것
protocol Naming {
    func getName() -> String
}

protocol Aging {
    func getAge() -> Int
}

typealias Friendable = Naming & Aging

typealias FullNaming = Naming

//struct Friend : Naming & Aging {
//
//} 아래와 같은 의미

struct Friend : Friendable {
    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
    
    var name : String
    var age : Int
}

typealias FriendName = String

var friendName : String = "Developer Kim"

typealias Friends = [Friend]

var myFriendsArray : [Friends] = []

typealias StringBlock = (String) -> Void

func sayHi(complection : StringBlock) {
    print("Work hard")
    complection("Today is awesoeme")
}

sayHi { saying in
    print("recevied here : ", saying)
}
//Enum in Class
typealias MyType = MyClass.MY_TYPE

class MyClass {
    enum MY_TYPE {
        case DOG, CAT, BIRD
    }
    var myType = MyType.DOG
}

var myClass = MyClass()
myClass.myType = MyType.CAT

print("myClass.myType : ",myClass.myType)
