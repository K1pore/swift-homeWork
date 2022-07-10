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
    var firstValue: Int = Int()
    var secondValue: Int = Int()
    var result: Double = Double()
    var arry: Array = [0]
    func noname(_ inC: Double, _ to: Double) -> Double {
        var resulted = Double()
        resulted = inC + to
        return resulted
    
    }
}

let classCalculated = Calculated()
classCalculated.noname(10, 10)

/*
 Задание 1

 Реализуйте структуру Point, описывающую точку на плоскости (2 оси)
 Структура должна обладать следующими характеристиками:
 — свойство, описывающее координаты очки на плоскости
 — метод, принимающую другую точку в качестве входного аргумента и возвращающий расстояние между текущей точкой и переданной
 Проверьте работоспособность вашей структуры
 Расстояние между точками с координатам (10,20) и (15,22) должно быть равно [Double] 5.385164807134504
 */

struct Point {
    var x: Double
    var y: Double
    
    func pointly(_ to: Double) -> Double {
        if x > to {
            print("point x > space")
        } else {
            print("kak tak to?")
        }
        return x + to
    }
}
// Enum
enum Direction : String, CaseIterable {
    case north
    case west = "Дикий запад"
    case east = "East"
    case south = "Южный парк"
    
   mutating func turn90ClockWise() {
        switch self {
        case .west:
            self = .north
        case .east:
            self = .south
        case .north:
            self = .east
        case .south:
            self = .west
        }
    }
}
// Использование енум в ствитчах
let direction = Direction.east
// direction = .north

switch direction {
case .west:
    print("West")
case .east:
    print("East")
case .north:
    print("North")
case .south:
    print("South")
}

//

//CaseIterable протокол
// может хранить в себе любые типы

