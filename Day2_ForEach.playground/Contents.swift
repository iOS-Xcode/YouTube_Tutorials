import UIKit

//콜렉션 : 데이타를 모아둔 것
//배열, Set, Dictory
//배열
var myArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

//for item in myArray {
//    print("item: \(item)")
//}

//조건
for item in myArray where item > 5 {
    print("item: \(item)")
}
//짝수, where : 조건.
for item in myArray where item % 2 == 0 {
    print("item: \(item)")
}
//홀수
for item in myArray where item % 2 != 0 {
    print("item: \(item)")
}
