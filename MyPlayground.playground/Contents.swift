import UIKit

//HomeWork

/*
 Задание 8

 Напишите функцию, которая повторяет заданную строку N раз.
 Функция принимает на вход значение типа String (строку для повторений) и значение типа Int (количество повторений) и возвращает полученный результат.
 
 Пример:
 funcName("Swift", 2) -> "SwiftSwift"
 funcName("Xcode", 0) -> ""
 */

// --

func srtReapit(to phrase: String, in count: Int) -> String {

    var result = ""
    
    for _ in 0..<count {
        result += phrase
    }
    return result
}

let someText = "text"
var someNumber = 4
var start = 0
for _ in start..<someNumber {
    print(someText)
}
srtReapit(to: "Hi", in: 3)
