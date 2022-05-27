//final class Friend { 상속이 안되게 한다.
final class Friend {
    var name : String
    init(name: String) {
        self.name = name
    }
}

class BestFriend: Friend {
    override init(name: String) {
        super.init(name: "BF" + name)
    }
}

let myFriend = Friend(name: "Develoer Kim")
let myBestFriend = BestFriend(name: "Wife Park")
