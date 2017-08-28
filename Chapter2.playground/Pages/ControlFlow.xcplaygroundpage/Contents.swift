/*:
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 ****
 */
//: # Control Flow
import UIKit

var str = "Hello, playground"
var bottles = 99
//: ## While and if
while bottles >= 0 {
  if bottles == 0 {
    print("No more bottles of beer on the wall.")
  } else if bottles==1 {
    print("1 bottle of beer on the wall.")
  } else {
    print("\(bottles) bottles of beer on the wall.")
  }
  bottles -= 1
}
//: ## For in with range
for index in 1...3 {
  print("\(index) banana")
}
//: ## For in with range reversed
for bottle in (0..<100).reversed() {
  switch bottle {
  case 0:
    print("No more bottles of beer on the wall.")
  case 1:
    print("1 bottle of beer on the wall.")
  case 2...100:
    print("\(bottle) bottles of beer on the wall.")
  default:
    print("Default is necessary here to make the switch exhaustive.")
  }
}
//: [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
