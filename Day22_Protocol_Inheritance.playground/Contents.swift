import UIKit

protocol Naming {
    var name : String { get set }
    func getName() -> String
}

protocol Aging {
    var age : String { get set }
}

protocol UserNotifiable : Naming, Aging {
    
}

class MyBestFriend : UserNotifiable {
    
    var name : String
    var age: String

    init(_ name : String, _ age : String) {
        self.name = name
        self.age = age
    }
    
    func getName() -> String {
        <#code#>
    }
}

struct MyFriend : UserNotifiable {
    var name: String
    
    func getName() -> String {
        <#code#>
    }
    
    var age: String
}
