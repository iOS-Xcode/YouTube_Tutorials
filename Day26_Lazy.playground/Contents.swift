
struct Pet {
    init() {
        print("Pet 이 생성되었다.")
    }
}

struct Friend {
    var name : String
    
    //객체를 생성할 때 메모리에 올리지 않고, 사용할 때 올림.
    lazy var pet : Pet = Pet()
    
    init(_ name: String) {
        self.name = name
        print("Friend가 생성됨")
    }
}

var myFriend = Friend("Mr.Kim")

//Lazy 가동
myFriend.pet

