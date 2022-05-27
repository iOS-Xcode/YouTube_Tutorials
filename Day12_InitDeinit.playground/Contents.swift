
class MyFriend {
    var name : String
    init(_ name: String = "No name") {
        self.name = name
        print("init - MyFriend uploaded on the memory")
    }
    deinit {
        print("deinit - 메모리에서 사라짐.", self.name)
    }
    
    //deinit 검증을 위해 작성
    var calledTimes = 0
    let MAX_TIMES = 5

    static var instancesOfSelf = [MyFriend]()
    
    class func destorySelf(object: MyFriend) {
        instancesOfSelf = instancesOfSelf.filter{ (aFriend: MyFriend) in
            aFriend !== object
        }
    }
    func call() {
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAX_TIMES {
            MyFriend.destorySelf(object: self)
        }
    }
}
 
//메모리에 올라감.
let myFriend = MyFriend("MR.Kim")
let aFriend = MyFriend()

//Unmanaged.passUnretained(객체).toOpaque()로 해당 객체으 메모리 주소를 프린터 할 수 있다.
let anObjectMemoryAddress = Unmanaged.passUnretained(aFriend).toOpaque()
let secondMemoryAddress = Unmanaged.passUnretained(myFriend).toOpaque()

print(anObjectMemoryAddress)
print(secondMemoryAddress)

weak var aFriendToBeDestoried = MyFriend("Developer Kim")

if aFriendToBeDestoried != nil {
    aFriendToBeDestoried!.call()
} else {
    print("객체가 더 이상 메모리에 없습니다.")
}
