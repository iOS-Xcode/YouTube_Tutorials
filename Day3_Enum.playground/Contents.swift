import UIKit
// 타입(카테고리)을 나눈다.
// 학교 - 초, 중, 고

enum School {
//    case elementary
//    case middle
//    case high
    case elementary, middle, high
}

let yourSchool = School.high
print("yourSchool:", yourSchool)

//값을 가지기 위해.
enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade: \(yourGrade)")
print("yourGrade: \(yourGrade.rawValue)")

//파라미터를 가지며 값을 가질 수 있음.
enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    func getName() -> String {
        switch self {
            //파라미터를 받기 위해.
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case .high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "Sajik")
print("yourMiddleSchoolName: \(yourMiddleSchoolName)")
print("yourMiddleSchoolName: \(yourMiddleSchoolName.getName())")

