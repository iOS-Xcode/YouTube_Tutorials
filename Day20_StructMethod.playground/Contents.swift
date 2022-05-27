import UIKit

struct Friend {
    var age : Int
    var name : String
    
    func sayHello() -> String {
        print("sayHello")
        return "I am \(age), \(name)"
    }
}

var myFriend = Friend(age: 50, name: "Seokhyun")

myFriend.sayHello()

