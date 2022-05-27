import UIKit

protocol PetHaving {
    //프로토콜에서 제네릭 타입을 가지기 위해 associatedtype 사용한다.
    associatedtype T
    //제네릭 타입의 배열을 가짐.
    var pets: [T] { get set }
    //구조체의 값을 변경하기 위해.
//    mutating func gotNewPet(_ newPet: T)
}

extension PetHaving {
    //구조체의 값을 변경하기 위해 - mutating
    mutating func gotNewPet(_ newPet: T) {
        self.pets.append(newPet)
    }
}

enum Animal {
    case cat, dog, bird
}

struct Friend: PetHaving {
    var pets: [Animal] = []
}

struct Family: PetHaving {
    var pets: [String] = []
}

var myFriend = Friend()
myFriend.gotNewPet(Animal.bird)
myFriend.gotNewPet(Animal.cat)
myFriend.gotNewPet(Animal.dog)
myFriend.pets

var myFamily = Family()
myFamily.gotNewPet("puppy")
myFamily.gotNewPet("turtul")
myFamily.gotNewPet("rabit")
myFamily.pets
