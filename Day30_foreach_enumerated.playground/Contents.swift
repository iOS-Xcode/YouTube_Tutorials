let myFriendsArray : [String] = ["부산", "서울", "대전", "인천"]
var frinedsWithIndex : [String] = []
for (index, aFriend) in myFriendsArray.enumerated() {
    print("index:\(index), item: \(aFriend)")
    frinedsWithIndex.append("\(index).번\(aFriend)")
}
