//import UIKit
import Foundation

// String Concatenation
var myStr = "hello" + "world"

// String append
myStr += "!"

// Looping over a string
for myChar in myStr {
    print(myChar)
}

// String size
myStr.count

// String Interpolation
var x = 7
var math = "\(x)^2 is \(x^2) not \(x * x) because ^ is XOR."

// Checking for equality
let dave = "Dave"
let name = "Dave"

if name == dave {
    print("they are equal")
}


// Finding a String within a String
if let rangeFound = name.range(of: "av") {
    print("Found av from \(rangeFound.lowerBound.encodedOffset) to \(rangeFound.upperBound.encodedOffset)")
}

// Finding a Character within a String
if let indexFound = name.index(of: "a") {
    print("Found a")
}

// Substrings
myStr.prefix(3)
myStr.suffix(7)
let startIndex = myStr.index(myStr.startIndex, offsetBy: 1)
let endIndex = myStr.index(myStr.startIndex, offsetBy: 6)
myStr[startIndex..<endIndex]

