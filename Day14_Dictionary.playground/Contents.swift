// Key : Value
var myFriends = ["bestFriend" : "Mr.Kim", "highschool" : "Miss Park"]

let myBestFriend = myFriends["highschool"]

//youtube key가 없을 경우, value를 "no friend"]라고 한다.
let youtubeFriend = myFriends["youtube", default: "no friend"]

myFriends["bestFriend"] = "Developer Kim"

let myBF = myFriends["bestFriend"]

//Add key, value
myFriends["newFriend"] = "Mrs. Oh"

let newFriend = myFriends["newFriend"]

myFriends.updateValue("James", forKey: "GirlFriend")


let girlFriend = myFriends["GirlFriend"]

//replace value
myFriends.updateValue("James", forKey: "bestFriend")

let emptyDic : [String : Int] = [:]
let emptyDic1 : [String : Int] = [String : Int]()
let emptyDic2 = [String : Int]()
let emptyDic3 : [String : Int] = Dictionary<String, Int>()
myFriends.count

for item in myFriends {
    print("item: ", item)
}
