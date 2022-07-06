import UIKit


//enum Direction {
//    case left, right, up, down
//}
//var currentDirection = Direction.left
//
//currentDirection = .up
//
//
//enum Code {
//    case qr(String)
//    case ups(Int, Int, Int, Int)
//    case barCode
//}
//
//var code = Code.qr("1234")
////var code1 = Code.ups(23, 123, 3, 323)
//
//switch code {
//case .qr(let value): print("qr code: \(value)")
//    break
//case .ups(let a, let b, let c, let d):
//    print("ups code: \(a) \(b) \(c) \(d)")
//case .barCode:
//    print("barcode")
//}
//
//if case .qr(let value) = code {
//    print("Code = \(value)")
//}

//let currentDirection = Direction.right
//
//if currentDirection == .right {
//    print("right")
//}
//// присоверние ключей к enum
//enum Moton: String {
//case left = "left"
//case right = "Right"
//case top1 = "Top"
//case bottom1 = "Bottom"
//}
//
//let currentMoton = Moton.right
//
//if currentMoton == .right {
//    print("moton = \(currentMoton)")
//}
//// значение ключа
//currentMoton.rawValue
//
//// class and ctructure
//
//class Human {
//    var age = 0
//    var name = ""
//    // init - это конструктор класса
//    init(name :String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    init(parametrName: String, age: Int) {
//        name = "***\(parametrName)***"
//        self.age = age
//    }
//    // deinit - диструктор это функция создается в тот момент когда обьект уничтожается
//    deinit {
//        print("Deinit: \(name)")
//    }
//    init?(age: Int) {
//        if self.age < 0 {
//            return nil
//        } else {
//            self.age = age
//    }
//}
//}
//
//func createPerson() {
//
//    let nikita = Human(name: "Nikita", age: 20)
//    print(nikita.name)
//    let anton = Human(name: "Anton", age: 24)
//    print(anton.age)
//    let nameStyle = Human(parametrName: "Kirill", age: -2)
//    print(nameStyle.name)
//}

class Render {
    init() {
        print("render is created")
    }
}
class Human {
    //
    var age = 0
    var name = ""
    static var numberOfHumans = 0
    lazy var render = Render()
    //
    static let greeting = "hello i am Human"
    //
    static func greet() -> String {
        return "Hello we are \(numberOfHumans)"
    }
    //
    var formattedName: String {
        return "((\(name)))"
    }
    //
    var checkedAge: Int {
        get { return age < 0 ? 0 : age }
        set {
            if newValue >= 0 {
                age = newValue
            }
        }
    }
    //
    init(name:String, age: Int) {
        self.name = name
        self.age = age
        Human.numberOfHumans += 1
    }
    //
    convenience init(name: String) {
        self.init(name: name, age: 26)
    }
    //
    func birthday() -> String {
        age += 1
        return "Happy Birhday \(age), \(name)"
    }
    deinit {
        Human.numberOfHumans -= 1
    }
    
    func test() {
        let _ = Human(name: "Nikita")
        Human.greet()
    }
}

//
let nikita = Human(name: "Nikita")
let nikita2 = Human(name: "Nike")
nikita.age = 2
nikita.checkedAge
Human.greet()
