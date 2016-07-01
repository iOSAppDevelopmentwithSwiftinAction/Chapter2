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
getSquareArea(width: 10)                               //Experiment <- Make this value less than 0
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
getSquareArea2(width: 10)                              //Experiment <- Make this value less than 0 or nil
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
//: ### With a two-dimensional array:
var pos = [["O","X","O"],
           ["X","X","O"],
           ["X","O","X"]
]
//: ### To get the top left pos, you could use multiple optional binding:
if let firstRow = pos.first, firstPos = firstRow.first {
    print("In the top left position is a \(firstPos)")
}
//: ### OR - you could use optional chaining!
if let firstPos = pos.first?.first {
    print("In the top left position is a \(firstPos)")
}
//: ### Or with a three-dimensional array:
var pos3D = [[["O","X","O"],["O","X","O"],["O","X","O"]],
            [["O","X","O"],["O","X","O"],["O","X","O"]],
            [["O","X","O"],["O","X","O"],["O","X","O"]]
]
//: ### With optional chaining, you can just keep on going!
if let firstPos = pos3D.first?.first?.first {
    print("On the top left of the first side is a \(firstPos)")
}
//: #### Do this with any optional property.
//: #### Here's a two dimensional dictionary:
var engTo = ["hello": ["esp":"hola","fra":"bonjour","chi":"你好"],
             "goodbye": ["esp":"adios","fra":"au revoir","chi":"再见"]
]
//: #### As getting a dictionary value returns an optional, you can use optional chaining:
if let helloEsp = engTo["hello"]?["esp"] {
    print("Hello in Spanish is \(helloEsp)")
}
//: #### Use optional chaining to set a value too
engTo["hello"]?["ita"] = "ciao"
