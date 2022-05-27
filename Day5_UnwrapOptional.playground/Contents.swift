// 옵셔널 - 값이 있는지 없는지 모른다,

var someVariable : Int? = nil

if someVariable == nil {
    someVariable = 90
}
print("someVariable", someVariable)

//언랩핑이란? 랩을 벗기는 것
if let otherVariable = someVariable {
    print("언래핑 되었다 : \(otherVariable)")
} else {
    print("값이 없다.")
}

someVariable = nil

//someVariable이 비어있으면 즉 값이 없으면 기본값으로 특정한 값을 넣는다.
let myValue = someVariable ?? 10
print("myValue : \(myValue)")

var firstValue : Int? = nil
var secondValue : Int? = 50

print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")

unwrap(firstValue)
unwrap(secondValue)

//guard let을 이용한 언랩
func unwrap(_ parameter: Int?) {
    print("unwrap() called")
    //값이 없으면 리턴 해 버린다.
    guard let unWrappedParam = parameter else {
        return
    }
    print("unWrappedParam: \(unWrappedParam)")
}


