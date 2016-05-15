//: # Simple types and type inference
import UIKit
var str = "Hello, playground"
var name:String = "Craig"

var guess = 47
var answer = 42
//: ## Declare a variable without a value
var feedback:String                                     // Declare the variable's data type
if guess == answer {
    feedback = "Well done, you won!"
} else {
    feedback = "Bad luck, you lost."
}
//: ## Clarifying the intended data type
var width:Double = 3                                    //Clarify the variable’s data type
var height = 4.5
var area = width * height
//: # Simple Types
//: ## Concatenating Strings
//: ### Concatenation with addition + operator
var result = "You win!"
var message = "Game over " + result
//: ### Concatenation with addition + operator with mixed types
var score = 3_333_360
/*var message = "You scored " + score                   //Error: Mixed type */
//: ### Alternative: String interpolation
var message2 = "You scored \(score)"
//: ## Converting Numbers
//: ### Convert Int to a Double
var monthExpenses = 809.10                              //Inferred as Double
var daysInMonth = 31                                    //Inferred as Int
/*var dailyExpenses = monthExpenses / daysInMonth 		//Error: Int can't be divided by Double */
var dailyExpenses = monthExpenses / Double(daysInMonth)	//Convert Int to Double to divide it
//: ### How many pizza slices per person?
var totalPizzaSlices = 8
var numberOfPeople = 3
var slicesPerPerson = totalPizzaSlices / numberOfPeople
