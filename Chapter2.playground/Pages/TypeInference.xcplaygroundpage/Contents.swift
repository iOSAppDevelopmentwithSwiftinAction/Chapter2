/*:
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 ****
*/
//: # Type Inference
import UIKit
//: ## Declare a variable without a value
var soupPaymentSuccessful = true
var feedback:String                                                         // Declare the variable's data type
if soupPaymentSuccessful {
    feedback = "Soup payment processed"                                     // Pass it a value
} else {
    feedback = "No soup for you!"                                           // Pass it a value
}
//: ## Clarifying the intended data type
var quantitySoup:Double = 2                                                 // Clarify the data type as Double
var priceSoup = 2.99                                                        // Double is inferred
var total = quantitySoup * priceSoup
//: ## Convert Numeric types
var restaurantRent = 809.10                                                 //Inferred as Double
var daysInMonth = 31                                                        //Inferred as Int
//var dailyRent = restaurantRent / daysInMonth                              //Produces error. Double can’t be divided by Int
var dailyRent = restaurantRent / Double(daysInMonth)                        //Convert Int to Double to divide it
//: ### How many pizza slices per person?
var totalPizzaSlices = 8
var numberOfPeople = 3
var slicesPerPerson = totalPizzaSlices / numberOfPeople                     //Incorrect answer: 2
var slicesPerPerson2 = Double(totalPizzaSlices) / Double(numberOfPeople)    //Correct answer:   2.66
//: ## Concatenating strings
var name = "Jerry"
var message = "Welcome, " + name
var cost = 3.50
//var message = "Your meal costs $" + cost                                    //Produces error. String can't concatenate with Double
var message2 = "Your meal costs $" + String(cost)                             //Solution 1: Convert Double to String
var message3 = "Your meal costs $\(cost)"                                     //Solution 2: String interpolation


//: [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
