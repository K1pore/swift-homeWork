import UIKit


var str = "generic"


var stringArray = ["Hi", "Hello", "Good bye"]
var intArray = [1,2,3,4,5]
var DoubleArray = [1.2,21.2,3.1]


func printStringFromArray(a: [String]) {
    for g in a {
        print(g)
    }
}

func printIntFromArray(a: [Int]) {
    for g in a {
        print(g)
    }
}

func printDoubleFromArray(a: [Double]) {
    for g in a {
        print(g)
    }
}
printStringFromArray(a: stringArray)
printIntFromArray(a: intArray)
printDoubleFromArray(a: DoubleArray)
// generic

func printElementFromArray<T>(a:[T]) {
    for elements in a {
        print(elements)
    }
}
printElementFromArray(a: stringArray)
printElementFromArray(a: intArray)
printElementFromArray(a: DoubleArray)

// ex 2

func doNothing<T>(x: T) -> T {
    return x
}

doNothing(x: "mama")
doNothing(x: 1234)
doNothing(x: false)

// ex 3 Struct

var emptyArray = [String]()


struct GenericArray<T> {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
}


var myFriendsList = ["Vova", "Bob", "Klim"]

var arrays = GenericArray(items: myFriendsList)
arrays.push(item: "Nick")

