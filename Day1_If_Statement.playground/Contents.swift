import UIKit

//다크 모드 여부
var isDarkMode : Bool = false

if isDarkMode != true {
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}

if !isDarkMode {
    print("다크모드 아닙니다.")
} else {
    print("다크모드가 입니다.")
}

var title = isDarkMode == true ? "다크모드입니다." : "다크모드가 아닙니다."
print("title\(title)")

var title1 : String = !isDarkMode ? "다크모드가 아닙니다." : "다크모드가 입니다."
print("title1\(title1)")
