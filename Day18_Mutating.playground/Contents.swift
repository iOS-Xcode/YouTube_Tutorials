
class Friend {
    var name : String
    
    func changeName(newName: String) {
        self.name = newName
    }
    init(_ name: String) {
        self.name = name
    }
}

var myFriend = Friend("Mr. Kim")

myFriend.changeName(newName: "Developer Kim")

myFriend.name

//struct는 자동적으로 생성자를 만들어 줌.
struct BestFriend {
    var name : String
//struct의 멤버 변수를 변경할 때는 mutating을 넣어 줘야 한다. 즉 값을 변경할 때..
    mutating func changeName(newName: String) {
        self.name = newName
    }
//    init(_ name: String) {
//        self.name = name
//    }
}

var myBestFriend = BestFriend(name: "Mrs. Park")
myBestFriend.changeName(newName: "Hi Seokhyun!!")
