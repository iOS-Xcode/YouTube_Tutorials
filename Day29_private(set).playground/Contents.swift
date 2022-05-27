
struct MyPet {
    //public이 생략
    var title : String = "No title"
    
    private (set) var name = "No name"
    mutating func setName(to newName: String) {
        self.name = newName
    }
}

var myPet = MyPet()
myPet.name
myPet.title

myPet.title = "iOS"
myPet.title

//myPet.name = "Seokhyun" error
// private (set), mutating func setName(to newName: String) 에서는 가능하나 struct 바깎에서는 변경 불 가능.

//그래서 struct 안의 메서드로 변경 시도 -> 가능
myPet.setName(to: "Seokhyun")
myPet.name
