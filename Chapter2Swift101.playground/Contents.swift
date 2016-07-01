//: # Swift 101
import UIKit
//: ## Variables and constants
var aVariable = 0
let aConstant = 0
//: ## A comment on comments
/*
     /* 
         It's fine for this multi-line comment
         to be inside another multi-line comment
     */
    //This code is commented
    print("Print something")
*/
//: ## Operators
//: ### Range operators
let closedRange = 1...3
let halfOpenRange = 1..<3
//: #### For-in loop with range
for index in 1...3 {
    print("\(index) banana")
}
//: ## Control flow
//: ### While loop
var num = 1
while num < 100 {
    num += num
    print(num)
}
//: ### Repeat while loop
num = 1
repeat {
    num += num
    print(num)
} while num < 100

//: ### If statement
//valid code
if num == 0 {
    print("")
}
//valid code
if (num == 0) {
    print("")
}
//invalid code:
//if (num == 0)
//    print("")
//: ### Switch statement
var grade = 99
switch grade {
case 100:
    print("Perfect!")	//#1
case 98,99:			//#2
    print("Excellent!")
case 85..<98:		//#3
    print("Well done!")
case 70..<85:		//#3
    print("Good work!")
case 50..<70:		//#3
    print("You passed!")
default:			//#4
    print("You failed.")
}