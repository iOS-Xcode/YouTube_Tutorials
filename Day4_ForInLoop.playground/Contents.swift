import UIKit

// 0...5
for i in 0...5 {
    print(i)
}

//0, 1, 2, 3, 4
for index in 0..<5 {
    print(index)
}

//0, 2, 4
for index1 in 0..<5 where index1 % 2 == 0 {
    print("index1",index1)
}

var randomInts: [Int] = [Int]()
for _ in 0..<25 {
    //0부터 100까지 랜덤으로 숫자를 가지고 옴.
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}
        
print(randomInts)
