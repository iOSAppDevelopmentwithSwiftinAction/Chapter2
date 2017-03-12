//: # Collections
import UIKit
var str = "Hello, playground"
//: ## Arrays
//: ### Instantiating an Array
var friedChickenRecipe:[String]
friedChickenRecipe = ["Mix spices with flour, sugar and salt.",
                     "Dip chicken in egg white, mix in flour mixture.",
                     "Deep fry chicken.",
                     "Drain on paper towels."]
//: ### Add elements to an array
friedChickenRecipe.insert("Check chicken temp is 165°F.", at: 3)
friedChickenRecipe.append("Serve!")
//: ### Looping through an Array
for step in friedChickenRecipe {
    print(step)
}
for (index, step) in friedChickenRecipe.enumerated() {
    print("Step \(index + 1):\(step)")
}
//: ### Extract element from array
let firstStep = friedChickenRecipe.first
let secondStep = friedChickenRecipe[1]
let firstTwoSteps = friedChickenRecipe[0...1]    //Extract (or set) elements using range
//: ### Concatenating Arrays
let preRecipeSteps = ["Preheat oven to 350°F"]
friedChickenRecipe = preRecipeSteps + friedChickenRecipe      //Use + or +=
//: ## Sets
//: ### Instantiating a Set
var herbsNSpices:Set<String>               //Declare a Set
herbsNSpices = ["Salt","Thyme","Oregano",  //Initialize a Set
                "Celery Salt","Black Pepper",
                "Dried Mustard","Paprika","Garlic Salt",
                "Ground Ginger", "White Pepper","MSG"]
//: ### Add elements to a set
herbsNSpices.insert("Basil")
herbsNSpices.remove("MSG")
//: ### Iterate over Set
for herbOrSpice in herbsNSpices {
    print(herbOrSpice)
}
//: ### Combining Sets
var otherIngredients:Set = ["Chicken","Egg white","Brown Sugar"]
var allIngredients = herbsNSpices.union(otherIngredients)
//Note: Sets can also be combined with intersection, symmetricDifference or subtracting
//: ## Dictionaries
//: ### Instantiating a Dictionary
var abbreviations:[String:String] = [:]     //Declare an empty Dictionary
abbreviations = ["tsp":"teaspoon",          //Initialize a Dictionary
                 "tbs":"tablespoon",
                 "qt":"quarts"]
//:### Common Dictionary syntax
let teaspoon = abbreviations["tsp"]
abbreviations.count
abbreviations.isEmpty
abbreviations["qt"] = nil
//: ### Looping over a Dictionary
for (abbreviation,measurement) in abbreviations {
    print("\(abbreviation) is \(measurement)")
}
//:### Extract keys and values
let abbreviationCodes = Array(abbreviations.keys)
let measurements = Array(abbreviations.values)
