//: Playground - noun: a place where people can play

import UIKit

let myNum: Double = 70
let myName = "Tony"

var str = "Hello, \(myName) \(myNum)"

var myDictionary = [String:String]()
myDictionary["Tony"] = "CS"

myDictionary = [:]

var optionalString: String? = "Hello"
println(optionalString == nil)


var optionalName: String? = "John"
var greeting = "Hello"

if (optionalName != nil) {
    greeting = "Hello, \(optionalName)"
} else {
    greeting = "Hello, stranger"
}

let interestingNums = ["primes":[1,2,3,5,7],
    
                    "fibonacci":[1,1,2,3,5,8]]

for (kind, numbers) in interestingNums {
    for number in numbers {
        println(number)
    }
}

var numbers = [20, 19, 7, 12]

let sortedNumbers = sorted(numbers){$1>$0}
println(sortedNumbers)



