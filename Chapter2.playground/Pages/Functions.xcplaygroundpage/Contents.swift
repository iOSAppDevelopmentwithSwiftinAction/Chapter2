/*:
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 ****
 */
//: # Functions
import UIKit
//: ## Declaring and calling a function
func serve(drink: String, customer: String) -> String {
    return("\(customer), your \(drink) is served")
}
print( serve(drink: "beer", customer: "Billy") )
//: ## Modifying external parameter name
func serve2(drink: String, to customer: String) -> String {
    return("\(customer), your \(drink) is served")
}
print( serve2(drink: "beer", to: "Billy") )
//: ## Omitting external parameter name
func serve3(_ drink: String, to customer: String) -> String {
    return("\(customer), your \(drink) is served")
}
print( serve3("beer", to: "Billy") )

//: ## Default parameter name
func serve4(_ drink: String = "Beer", to customer: String = "Billy") -> String {
    return("\(customer), your \(drink) is served")
}
print( serve4() )
//: [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
