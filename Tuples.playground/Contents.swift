//: ## Tuples
//:
import UIKit

//: ### Working with Tuples
var meal1:(String,Double)                             //Declare a Tuple. Specify data types of elements.
var meal2 = ("Turkey chili soup",2.99)                //Initialize a Tuple. Element data types inferred.
print("\(meal2.0) costs \(meal2.1)")                  //Set/retrieve tuple values with index
var meal3:(name:String,price:Double)                  //Declare a Tuple with element names
var meal4 = (name:"Bread",price:2)                    //Initialize a Tuple with element names
meal4.price = 3                                       //Set/retrieve tuple values with names
//: ### Return a tuple from a function
func chefSpecial() -> (name: String, price: Double) {
    return (name:"Crab bisque",price:3.99)
}
var meal = chefSpecial()
typealias Meal = (name: String, price: Double)
func chefSpecial2() ->Meal {
    return (name:"Crab bisque", price:3.99)
}

//: ### Tuple tricks: Initialize variables based on a tuple
var soup = (name:"Jambalaya", price:2.99)
var (soupName,soupPrice) = soup
print("\(soupName) costs $\(soupPrice)")
//: ### Tuple tricks: Define two values at once using a tuple
var (soupName2,soupPrice2) = ("Tomato soup",1.99)
print("\(soupName2) costs $\(soupPrice2)")
//: ### Tuple tricks: Swap two values using tuples
var mealLeftHand = "Fish and chips"
var mealRightHand = "Burger and fries"

(mealLeftHand, mealRightHand) = (mealRightHand, mealLeftHand)
mealLeftHand
mealRightHand
