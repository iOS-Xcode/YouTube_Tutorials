// String을 반환하는 클로저
let myName : String = {
    //myName으로 들어간다
    return "Kim"
}()

print(myName)

//클로저 정의
let myRealName : (String) -> String = { (name: String) -> String in
    return "개발하는 \(name)"
}

myRealName("Seokhyun Kim")

let myRealNameLogic : (String) -> Void = { (name: String) in
    print("Developer \(name)")
}

myRealNameLogic("Seokhyun")
