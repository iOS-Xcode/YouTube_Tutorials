import UIKit

//함수에서 클로저를 매계변수로 받고 이를 반환 한다. : 고차함수 예)map
func getName(_ name: String) -> String {
    return "My name is \(name)"
}

var getNameClosure : (String) -> String //getName closure

func sayHello( getName: (String) -> String, name: String) -> String {
    return getName(name)
}

let resultOne = sayHello(getName: getName(_:), name: "Seokhyun")

//Map 예시

let numbers = [3, -7, 8, 21, 106, -9]

let stringNumbers : [String] = numbers.map { (aNumber: Int) -> String in
    return "transform to String \(aNumber)"
}

let evenNumbers : [Int] = numbers.filter { aNumber in return aNumber % 2 == 0 }
print(evenNumbers)

let oddNumbers : [Int] = numbers.filter { aNumber in return aNumber % 2 != 0 }
print(oddNumbers)
