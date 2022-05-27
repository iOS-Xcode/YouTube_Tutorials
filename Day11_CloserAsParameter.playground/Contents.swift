import Darwin

// () -> Void
//func complection() {
//
// }

//complection이라는 클러저를 매개변수로 가지는 메서드 정의
func sayHi(complection: () -> Void) {
    print("sayHi() called")
    sleep(2) //pause 2 sec
    //complection execute : 클로저를 실행한다.
    complection()
}

//ㅁㅔ소드 호출 부에서 이벤트 실행을 하며 종료를 알 수 있다.
sayHi(complection: {
    print("2초가 지났다. 1")
})

sayHi() {
    print("2초가 지났다. 2")
}

//클러저가 매게번수로 되어 있으면 블록으로 처리 가능.
sayHi {
    print("2초가 지났다. 3")
}

// (String) -> Void
//func complection(userInput: String) {
//
//}

//메개변수로서 데이터를 반환하는 클로저
func sayHiWithName(complection: (String) -> Void){
    print("sayHiWithName() called")
    sleep(2)
    //클로저를 실행과 동시에 데이터를 반환
    complection("Have you a good day?")
}

sayHiWithName(complection: { (comment: String) in
    print("2초 뒤에 그가 말했다 1. comment: ", comment)
})

sayHiWithName(complection: { comment in
    print("2초 뒤에 그가 말했다 2. comment: ", comment)
})

sayHiWithName{ comment in
    print("2초 뒤에 그가 말했다 3. comment: ", comment)
}

sayHiWithName{
    print("2초 뒤에 그가 말했다 4. comment: ", $0)
}

// (String, String) -> Void
//func complection(first: String, second: String) {
//
//}

//매개변수로서 여러개 데이터를 반환하는 클러저
func sayHiWithFullName(complection: (String, String) -> Void){
    print("sayHiWithFullName() called")
    sleep(2)
    //클로저를 실행과 동시에 데이터를 반환
    complection("Have you a good day?", "ReallyGood")
}

sayHiWithFullName { first, second in
    print("첫번째: \(first), 두번째: \(second)")
}

sayHiWithFullName { _, second in
    print("두번째: \(second)")
}

sayHiWithFullName {
    print("첫번째: \($0), 두번째: \($1)")
}

//클로저를 옵셔널로 만들기. (() -> Void)? = nil)
//nil로 주는 이유는 기본형을 줘야 하기 때문.
//클로저를 옵셔널로 받은 이유, 호출부에서 매개변수를 받을 수도 있고, 안 받을 수도 있다.
func sayHiOptional(complection: (() -> Void)? = nil) {
    print("sayHi() called")
    sleep(2) //pause 2 sec
    //complection execute : 클로저를 실행한다.
    complection?()
}

sayHiOptional()

sayHiOptional(complection: {
    print("2초가 지났다.!!")
})

// (Int) -> String
//func complection(userInput: Int) -> String {
//
//}
func transform(number: Int) -> String {
    return "number : \(number)"
}

//map, max, min 같이 클로저를 이용.
var myNumbers : [Int] = [0, 1, 2, 3, 4, 5]
//map 하고 인터두번. map은 반복한다. aNumber = 하나의 넘버
var transformedNumbers = myNumbers.map { aNumber in
    return "숫자: \(aNumber)"
}

var transformedNumbers1 = myNumbers.map { (aNumber: Int) -> String in
    return "숫자: \(aNumber)"
}

var transformedNumbers2 = myNumbers.map {
    "숫자: \($0)"
}
