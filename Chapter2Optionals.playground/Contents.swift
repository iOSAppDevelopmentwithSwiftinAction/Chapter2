//: # Optionals in Swift
//:
import UIKit
//: ## Declaring an optional
var width:Int?
var height:Int?
width = 5
height = Int("10")
/** print("Square area is \(width * 2)")    //Error - need to unwrap the optional **/


//: ## Forced Unwrapping
print("Square area is \(width! * 2)")
if width != nil {
    print("Square area is \(width! * 2)")
}
//: ## Optional Binding
if let widthValue = width {
    print("Square area is \(widthValue * 2)")
}
if let width = width {
    print("Square area is \(width * 2)")
}
//: ### Pyramid of doom
if let width = width {
    if let height = height {
        print("Rectangle area is \(width * height)")
    }
}
//: ### Multiple optional binding
if let width = width, height = height {
    print("Rectangle area is \(width * height)")
}
//: ### Guard statement
func getSquareArea(width:Int)->Int {
    guard width>0 else {
        return(0)
    }
    return(width*width)
}
getSquareArea(10)                               //Experiment <- Make this value less than 0
//: ### Guard let statement
func getSquareArea2(width:Int? = nil)->Int {
    guard let width = width else {
        return(0)
    }
    guard width>0 else {
        return(0)
    }
    return(width*width)
}
getSquareArea2(10)                              //Experiment <- Make this value less than 0 or nil
//: ### Guard let with where
func getSquareArea(width:Int? = nil)->Int {
    guard let width = width where width>0 else {
        return(0)
    }
    return(width*width)
}
//: ### Ternary conditional operator
func getUnwrappedWidthTernaryConditional(width:Int? = nil)->Int {
    return (width != nil ? width! : 0 )
}
//: ### Nil coalescing operator
func getUnwrappedWidthNilCoalescing(width:Int? = nil)->Int {
    return (width ?? 0 )
}
//: ## Implicitly unwrapped optionals
var width2:Int!                                  //Implicitly unwrapped optional
width2 = 5                                       //Experiment <- Comment out this line
print("Square area is \(width2 * 2)")            //#2
//: ## Optional chaining
class Person {
    var firstChild:Person?
}
var person = Person()
person.firstChild = Person()
//: ### To get the grandchild, you could use multiple optional binding:
if let child = person.firstChild, grandchild = child.firstChild {
    print("They have a grandchild!")
}
//: ### OR - you could use optional chaining!
if let grandchild = person.firstChild?.firstChild {
    print("They have a grandchild!")
}
if let greatgreatgrandchild = person.firstChild?.firstChild?.firstChild?.firstChild {
    print("They have a great great grandchild!")
}
//: #### Use optional chaining too for setting a value:
person.firstChild = Person()
person.firstChild?.firstChild = Person()
person.firstChild?.firstChild?.firstChild = Person()
