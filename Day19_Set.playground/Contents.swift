
//SET

var myNumberSet : Set<Int> = Set<Int>()

myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(2)
myNumberSet.insert(3)
myNumberSet.insert(3)

myNumberSet.count
myNumberSet //{3, 2, 1} item이 순서대로 나오지 않는다.

for aNumber in myNumberSet {
    print("aNumber: ", aNumber)
}

var myFriends : Set<String> = ["Lee", "Park", "Kim"]

var myBestFriends : Set<String> = ["Lee", "Park", "Kim"]

myBestFriends.contains("Hong")
myFriends.contains("Lee") //true

if let indexToRemove = myFriends.firstIndex(of: "Kim") {
    print("indexToRemove", indexToRemove)
    myFriends.remove(at: indexToRemove)
}

if !myFriends.contains("Hong") {
    print("Hong in not exist")
}

myFriends

