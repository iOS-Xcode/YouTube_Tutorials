import Security

enum MismatchError: Error {
    case nameMismatch
    case numberMismatch
}

//에러를 던지는 메서드
func guessMyName(name input: String) throws {
    print("guessMyname() called with \(input)")
    
    if input != "kim" {
        print("wrong")
        //return
        throw MismatchError.nameMismatch //return과 비슷한 계념.
    }
    print("correct")
}

//option + command + /
/// 번호를 맞춘다,
/// - Parameter input: 사용자 숫자 입력
/// - Returns: bool 맞췄는지 여부
///
func guessMyNumber(number input: Int) throws -> Bool {
    print("guessMyname() called")
    
    if input != 10 {
        print("wrong")
        //return
        throw MismatchError.numberMismatch //return과 비슷한 계념.
    }
    print("correct")
    return true
}

//에러를 던지는 메서드를 사용할 때는 try 사용
//에러가 있어도 처리안하겠다. 즉 do catch를 사용하지 않는다. ?를 붙인다. 에러를 잡지는 않는다.
try? guessMyName(name: "lee")

//에러가 없을 꺼다는 가정, 에러 즉, !를 사용한다.
//try! guessMyName(name: "lee")

//do - 확실하게 하다.
do {
    try guessMyName(name: "kim")
} catch { //눈에 안보이지만 에러가 생략되어 있다
    print("catched error : \(error)")
}

do {
    let receivedValue = try guessMyNumber(number: 11) //-> bool 이므로
} catch { //위 처럼 에러가 나면     let receivedValue = try guessMyNumber(number: 11) 이 수행이 되지 않고 바로 catch 구문을 타고 종료한다.
    print("catched error : \(error)")
}
