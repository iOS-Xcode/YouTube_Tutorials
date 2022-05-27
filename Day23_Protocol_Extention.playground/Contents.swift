
//프로토콜은 일반적으로 바디를 가질 수 없다
protocol Naming {
    var lastname: String { get set }
    var firstname: String { get set }
    func getName() -> String
}

//바디를 가지기(사용하기 위해) 위해
extension Naming {
    func getFullname() -> String {
        return self.lastname + " " + self.firstname
    }
    func getLastName() -> String {
        return lastname
    }
}

struct Friend : Naming {
    
    var lastname: String
    
    var firstname: String
    
    func getName() -> String {
        return self.lastname
    }
}

let myFriend = Friend(lastname: "Kim", firstname: "Seokhyun")

myFriend.getName()
//protocol에 정의하지 않고 extension으로만 바디 부분 정의
myFriend.getFullname()
