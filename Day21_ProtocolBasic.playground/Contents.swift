
//약속
/// **delegate**
/// **able, ***ing *

//프로토콜로 약속
protocol Naming {
    //우리는 이런 변수를 가지고 있을겁니다. 라고 약속
    var name : String { get set }
    // 우리는 이런 메서드를 가지고 있을 겁니다. 라고 약속
    func getName() -> String
}

//프로토콜을 준수한다.
struct Friend : Naming {
    var name: String
    
    func getName() -> String {
        return "My Friend" + self.name
    }
}

var myFriend = Friend(name: "Mr.Kim")
myFriend.getName()
