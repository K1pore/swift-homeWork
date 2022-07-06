import UIKit
import Foundation
import Darwin

// 1 Если бы в вашей программе была работа с игральными картами, как вы организовали бы их хранение? Приведите пример.
//1:
enum Suit: String {
    case clubs
    case diamonds
    case hearts
    case spades
}
enum Hand: Int {
    case six = 6, sven, eght, nine, ten
    case J = 11
    case Q = 12
    case K = 13
    case A = 14
}
// 2 Каких типов могут быть raw значения кейсов enum?
// 2: строка, символ, целочисленое значение, числа с плавающей точкой.

//4. Напишите класс и структуру для хранения информации (положение, размер) о круге, прямоугольнике.

class Cyrcle {
    var x = 0.0, y = 0.0
    var radius = 0.0
    init(x: Double, y:Double, radius:Double) {
        self.x = y
        self.y = y
        self.radius = radius
    }
}

var getCyrcle = Cyrcle(x: 1.0, y: 2.0, radius: 3.5)
getCyrcle.radius

struct Size {
    var lenght: Int
    var width: Int
}

struct Rect {
    var x = 0.0, b = 0.0
    var size: Size
    var square: Int {
        get {
            return size.width * size.lenght
        }
    
    set {
        size.lenght = newValue
        size.width = newValue
    }
}
}

//7. Напишите класс для калькулятора с функциями для сложения, вычитания, умножения и деления цифр, которые в нём хранятся как свойства.


    // clouser
let driving = {
    print("I'm driving in my car")
}

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving2("park")

let drivingWithReturn = {(place: String) -> String in
    return "I'm going to \(place) in my car"
}

//func pay(user: String, amount: Int) {
//    // code
//}

let message = drivingWithReturn("London")
print(message)



let payment2 = {(user: String) in
    print("Paying \(user)...")
}
let payment3 = {(user: String) -> Bool in
    print("Paying \(user)...")
    return true
}
// - > bool in -no correct

let payment4 = {() -> Bool in
    print("Paynig...")
    return true
}

//func payment5() -> Bool {
//
//}


class Paqo {
    var str: String = String()
    var int: Int
    var power: Double = Double()
    init(int: Int, str: String){
        self.str = str
        self.int = int
    }
    func sayHello() -> String{
        return str
    }
    func sum(_ a: Int, _ b: Double) -> Int {
        return a + Int(b)
    }
    
}
let someClass = Paqo.init(int: 10, str: "ads")
someClass.str = "100"
someClass.power = 10.8
let sumClass = Paqo.sum
someClass.sum(1, 1.5)



class Calculated {
    var getA: Int = Int()
    var getB: Int = Int()
    var result: Double = Double()
    func noname(_ inC: Double, _ to: Double) -> Double {
        var resulted = Double()
        resulted = inC + to
        return resulted
    }
}


