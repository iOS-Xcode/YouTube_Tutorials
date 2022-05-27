
func sayName(_ name: String) {
    print("Hello! This is \(name)")
}

//name 이라는 상수를 변수로 바꾸기 위해.
func sayHi(_ name: inout String) {
    name = "Developer" + name
    print("Hello! This is \(name)")
}

sayName("MR. Kim")

//sayHi(<#T##name: &String##String#>)

//꼭 변수에 담아서 메모리 주소를 접근할 수 있다.
var name = "KOREAN KIM"
sayHi(&name)
