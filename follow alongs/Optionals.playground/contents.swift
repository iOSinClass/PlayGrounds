// We already know about constants vs variables but there is another choice always present.
var x = 7
var f: Float = 7
let dave = "Dave"
//dave = "Bob"  // Would cause an error

// Part 1.
// Optionals





// Optionals with forced unwrapping










// Part 2.
// Views in a Playground + Optional Chaining








// Optional Binding

if let valueIfNonNil = Int("Dave") {
    print("The value is \(valueIfNonNil)")
} else {
    print("value was nil")
}





// Implicitly Unwrapped Optionals

import UIKit

var possibleButton: UIButton? = UIButton(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height: 100)))


