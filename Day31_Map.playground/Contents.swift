
//Map은 기본적으로 콜렉션의 형태를 바꾼다. 즉 제네릭을 받아 원하는 데이타 타입으로 변경
//func map<T>(_ transform: (Element) throws -> T) rethrows -> [T]
//compactMap과 동일

let citiesArray : [String] = ["Seoul", "Busan", "Inchon", "Changwon"]

let myCities = citiesArray.map { aCity in
    return "Big cities ->" + aCity
}

let numbers : [Int] = [22, 33, 44, 55]

let myNumbers : [String] = numbers.map {
    return "My number : \($0)"
}

let myNumbers1 : [String] = numbers.map { (aNumber : Int) in
    return "My number : \(aNumber)"
}

let myNumbers2 = numbers.map {
    "My number : \($0)"
}

//CompactMap
let bigCitiesArray : [String?] = ["Seoul", nil, "Inchon", nil, "Suwon"]
//nil을 포함한 데이타 5개
let myBigCities : [String] = bigCitiesArray.map { aBigCity in
    let aCity = aBigCity ?? ""
    return "My big city -> " + aCity
}
//nil을 제외한 데이타 3개
let myBigCities1 : [String] = bigCitiesArray.compactMap { aBigCity in
    return aBigCity
}
//다중의 맵 사용
let myBigCities2 : [String] = bigCitiesArray
    .compactMap { $0 }
    .map {
        return "My big cities are" + $0
}

//Dictory
let pets = ["고양이" : "야용", "개" : "멍멍", "오리" : "꽥꽥"]

let myPets : [String] = pets.map { (animal: String, cry: String) in
    return "\(animal)의 울음소리는 \(cry) 입니다."
}

let myPets1 : [String] = pets.map {
    return "\($0)의 울음소리는 \($1) 입니다."
}

//Set
let numberSet : Set<Int> = [1, 2, 3, 1, 2, 3, 4, 5]
let myNumberSet : [String] = numbers.map { aNumber in
    return "\(aNumber * 10) 입니다."
}
let muNumberSet1 = numberSet.map {
    return "\($0) 입니다."
}
