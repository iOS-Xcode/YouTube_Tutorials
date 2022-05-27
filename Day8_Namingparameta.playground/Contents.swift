//함수, 메서드 정의
func myFunction(name: String) -> String {
    return "Hello \(name)"
}

myFunction(name: "Kim")

func myFunctionSecond(with name: String) -> String {
    return "Hello \(name)"
}

myFunctionSecond(with: "Park")

func myFunctionThird(_ name: String) -> String {
    return "Hello \(name)"
}

myFunctionThird("Lee")
