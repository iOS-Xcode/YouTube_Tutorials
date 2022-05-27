//제네릭 : 어떤 자료형을 받을 수 있다.
//제네릭은 T를 많이 쓴다.
struct MyArray<T> {
    //제네릭을 담은 빈 배열
    var elements : [T] = [T]()
    
    //편의를 위해 구조체이지만 생성자 생성
    init(_ elements: [T]) {
        self.elements = elements
    }
}

struct Friend {
    var name : String
}

struct FriendColor {
    var name : String
}

var mySomeArray = MyArray([1,2,3])
print("mySomeArray : \(mySomeArray)")

var myStringArray = MyArray([1,2,3])
print("myStringArray : \(myStringArray)")

let frined_01 = Friend(name: "Kim")
let frined_02 = Friend(name: "Lee")
let frined_03 = Friend(name: "Park")

var myFriendsArray = MyArray([frined_01, frined_02, frined_03])
print("myFriendsArray: \(myFriendsArray)")
