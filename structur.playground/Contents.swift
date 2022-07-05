import UIKit
import Darwin


class HumanClass {
    var name = ""
    
    init(name: String){
        self.name
    }
}

struct HumanStruct {

    var name = ""
    
    init(name: String){
        self.name
    }
}

var nikita = HumanStruct(name: "Nikita")
nikita.name
nikita.name = "*Nikita"


var nikita2 = nikita
nikita2.name = "**mike"

nikita.name
nikita2.name

///
///
//

enum SomeType {
    case юг
    case север
    case запад
    case восток
}
// в структурах инициализаторы есть нативно
struct UserStruct {
    var name: String
    func printName() {
        print(self.name)
    }
}
// в классах инициализаторы отсутсутствуют
class UserClass {
    struct MyStruct {
        var asddsad: String
    }
    
    var name: String = ""
    var myEnum: SomeType = SomeType.север // .север - одно и тоже
    var myStruct: MyStruct = .init(asddsad: "asdda") // MyStruct(asddsad:"asdda") - одно и тоже
    
    func printName() {
        print(self.name)
    }
}
//                         (инициалицзатор в скобках)
let userStruct = UserStruct(name: "Slava")
userStruct.printName()

let userStruct1 = UserStruct(name: "Vanya")
userStruct1.printName()

let userClass = UserClass()

let someConstant: UserClass.MyStruct



// property - это переменная или константа в теле класса/перечесление или структуры
// Методы - это функция в классах/структурах или пееречеслениях - enum

// классы могут наследоваться, а структуры не могут
// структуры имеют valueType, а классы referenceType


let userStruct2 = UserStruct(name: "222")
var userStruct3 = userStruct2
userStruct3.name = "333"

print(userStruct2.name)
print(userStruct3.name)


var userClass2 = UserClass()
userClass2.name = "222"
var userClass3 = userClass2
userClass3.name = "333"

print(userClass2.name)
print(userClass3.name)
