
import Combine
import Foundation

var myIntArrayPublisher : Publishers.Sequence<[Int], Never> = [1, 2, 3].publisher

myIntArrayPublisher.sink(receiveCompletion: { complection in
    switch complection {
    case .finished:
        print("완료")
        //Never이기 때문에 에러가 안 나온다.
    case .failure(let error):
        print("실패 : error : \(error)")
    }
}, receiveValue: { receivedValue in
    print("값을 받았다. : \(receivedValue)")
})

//값을 받았다. : 1
//값을 받았다. : 2
//값을 받았다. : 3
//완료

var mySubscription : AnyCancellable?
var mySubscriptionSet  = Set<AnyCancellable>()
var myNotification = Notification.Name("com.wjapps.customeNotification")
var myDefaultPublisher : NotificationCenter.Publisher = NotificationCenter.default.publisher(for: myNotification)
mySubscription = myDefaultPublisher.sink(receiveCompletion: { complection in
    switch complection {
    case .finished:
        print("완료")
    case .failure(let error):
        print("실패 : error : \(error)")
    }
}, receiveValue: { receivedValue in
    print("받는 값: \(receivedValue)")
})
//메모리에서 제거
mySubscription?.store(in: &mySubscriptionSet)

NotificationCenter.default.post(Notification(name: myNotification))
NotificationCenter.default.post(Notification(name: myNotification))
NotificationCenter.default.post(Notification(name: myNotification))

//메모리에서 제거
//mySubscription?.cancel()


//KVO - Key value observing
class MyFriend {
    var name = "철수" {
        didSet {
            print("name - didSet() : ", name)
        }
    }
}

var myFriend = MyFriend()
var myFriendSubscription : AnyCancellable = ["영수"].publisher.assign(to: \.name, on: myFriend)
