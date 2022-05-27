//프로퍼티 업저버
var myAge = 0 {
    willSet {
        //그전에 설정값을 리턴
        print("값이 설정될 예정이다. myAge: \(myAge)")
    }
    didSet {
        //설정되어진 값을 리턴
        print("값이 설정되었다. myAge: \(myAge)")
    }
}

myAge = 10
myAge = 20
