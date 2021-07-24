// 무언가를 수신받을 수 있는기능
protocol Receiveable {
    func received(data: Any, from: Sendable)
}

extension Receiveable {
    //메세지를 수신한다.
    func received(data: Any, from: Sendable) {
        print("\(self) received \(data) from \(from)")
    }
}


// 무언가를 발신할 수 있는 기능
protocol Sendable {
    var from: Sendable { get }
    var to: Receiveable? { get }
    
    func send(data: Any)
    
    static func isSendableInstance(_ instance: Any) -> Bool
}

extension Sendable {
    //발신은 발신 가능한 객체, 즉 Sendable 프로토콜을 준수하는 타입의 인스턴스여야 한다.
    var from: Sendable {
        return self
    }
    
    // 메시지를 발신한다.
    func send(data: Any) {
        guard let receiver: Receiveable = self.to else {
            print("Message has no receiver")
            return
        }
        // 수신 가능한인스턴스의 received 메서드를 호출한다.
        receiver.received(data: data, from: self.from)
    }
    
    static func isSendableInstance(_ instance: Any) -> Bool {
        if let sendableInstance: Sendable = instance as? Sendable {
            return sendableInstance.to != nil
        }
        return false
    }
}


// 수신, 발신이 가능한 Message 클래스
class Message: Sendable, Receiveable {
    var to: Receiveable?
}

//수신, 발신이 가능한 Mail 클래스
class Mail: Sendable, Receiveable {
    var to: Receiveable?
}

// 두 Message 인스턴스를 생성한다.
let myPhoneMessage: Message = Message()
let yourPhoneMessage: Message = Message()

// 아직 수산받을 인스턴스가 없다.
myPhoneMessage.send(data: "Hello") // Message has no receiver

// Message 인스턴스는 발신과 수신이 모두 간으하므로 메시지를 주고 받을 수 있다.
myPhoneMessage.to = yourPhoneMessage
myPhoneMessage.send(data: "Hello") // Message received Hello from Message

// 두 Mail 인스턴스를 생성한다.
let myMail: Mail = Mail()
let yourMail: Mail = Mail()

myMail.send(data: "Hi") // Mail has no receiver

//Mail과 Message 모두 Sendable과 Receiveable 프로토콜을 준수하므로 서로 주고 받을 수 있다.
myMail.to = yourMail
myMail.send(data: "Hi") // Mail received Hi from Mail

myMail.to = myPhoneMessage
myMail.send(data: "Bye") // Message received Bye from Mail

// String은 Sendable 프로토콜을 준수하지 않는다.
Message.isSendableInstance("Hello") // false

// Mail과 Message는 Sendable 프로토콜을 준수한다.
Message.isSendableInstance(myPhoneMessage) // true
