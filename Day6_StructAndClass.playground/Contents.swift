//유투버 (데이터) 모델 - struct / 구조체
struct YoutuberStruct {
    var name : String
    var subscribersCount : Int
}

//메모리에 올림.
var devKim = YoutuberStruct(name: "Kim", subscribersCount: 99999)

print("=============== STRUCT ================")
print("값 넣기 전 devKim.name = ",devKim.name)
var devKimClone = devKim

devKimClone.name = "Park"

print("값 넣은 후 devKimClone.name :",devKimClone.name)

print("값 넣은 후 devKim.name :",devKim.name)

//Class : 생성자 필요함.-> 메모리에 올리기 위해
class YoutuberClass {
    var name : String
    var subscribersCount : Int
    
    //생성자
    //init으로 매개변수를 가진 생성자 메소드를 만듷어야 매개변수를 넣어서 그값을 가진 객체(Object)를 만들수 있다.
    init(_ name: String, subscribersCount: Int) {
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var devKimClass = YoutuberClass("Kim", subscribersCount: 99999)

var devKimClassClone = devKimClass

print("=============== CLASS ================")

print("값 넣기 전 devKimClassClone.name = ",devKimClassClone.name)

devKimClassClone.name = "Seokhyun"

print("값 넣기 후 devKimClassClone.name = ",devKimClassClone.name)

print("값 넣기 후 devKimClass.name = ",devKimClass.name)

