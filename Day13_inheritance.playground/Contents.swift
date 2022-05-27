
class MyFrineds {
    var name : String
    init(_ name: String) {
        self.name = name
    }
    
    func sayHi() {
        print("Hello \(self.name)")
    }
}

class BestFrined : MyFrineds {
    //부모로 부터 받은 name, override로 부모의 메서드를 가지고 옴.
    override init(_ name: String) {
        //super로 부모의 메서드 사용
        super.init("Best " + name)
    }
    
    override func sayHi() {
        super.sayHi()
    }
}

let myFriends = MyFrineds("MR.KIM")
myFriends.sayHi()
let myBestFriend = BestFrined("Namyoung")
myBestFriend.sayHi()
myBestFriend.name
