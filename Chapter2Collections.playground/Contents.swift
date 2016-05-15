//: # Collections and Tuples in Swift
//:
import UIKit
//: ## Arrays
//: ### Instantiating an Array
var arrayOfInts1:[Int]                                   //Syntax for declaring an Array
var arrayOfInts = [0,1,2,3,4,5,6]                      //Initialize an Array (type inferred)
var arrayOfDoubles = [0,1,2,3,4.1,5,6]                  //One Double = Array type inferred as Double
var todoList:[String] = []                              //Specify type of empty Array
var buttonStates = Array(arrayLiteral: false,false)     //Alternative instantiation syntax
var buttonStates2 = Array(count: 4, repeatedValue: false)   //Another alternative instantiation syntax

todoList = ["Wash car","Make lunch"]
//: ### Common Array syntax
todoList[0]
todoList.count
todoList.isEmpty
todoList.append("Supermarket")
todoList.insert("Bank", atIndex: 0)
todoList.removeAtIndex(1)
todoList.contains("Supermarket")
todoList.indexOf("Make lunch")
//: ### Subscripting ranges
var extractedInts = arrayOfInts[3...5]                 //Extract elements using range
arrayOfInts[2...4] = [0]                               //Replace range of elements
//: ### Concatenating Arrays
var todoTonight = ["See grandma"]
todoList = todoList + todoTonight                       //Use addition operator(+)
todoList += todoTonight                                 //Use addition assignment operator(+=)
//: ### Looping through an Array
for todo in todoList {
    print(todo)
}
for (index, todo) in todoList.enumerate() {
    print("Item \(index + 1):\(todo)")
}
//: ## Sets
//: ### Instantiating a Set
var movieGenres1:Set<String>                            //Declare a Set
var movieGenres:Set = ["Drama","Comedy","Thriller","Horror"]    //Initialize a Set
//: ### Common Set syntax
movieGenres.first
movieGenres.count
movieGenres.isEmpty
movieGenres.insert("Drama")
movieGenres.remove("Drama")
movieGenres.contains("Drama")
for genre in movieGenres {
    print(genre)
}
//: ### Combining Sets
var primaryLight:Set = ["Red","Green","Blue"]
var primaryPaint:Set = ["Red","Yellow","Blue"]

var common = primaryLight.intersect(primaryPaint)
var all = primaryLight.union(primaryPaint)
var exclusive = primaryLight.exclusiveOr(primaryPaint)
var unique = primaryLight.subtract(primaryPaint)
//: ### Comparing Sets
var whiteSauce:Set = ["butter","flour","milk"]
var scone:Set = ["flour","butter","milk","cream"]
var biscuit:Set = ["flour","butter","milk"]
var icecream:Set = ["cream","sugar","vanilla extract","salt"]

whiteSauce == biscuit
whiteSauce.isSubsetOf(scone)
scone.isSupersetOf(whiteSauce)
whiteSauce.isDisjointWith(icecream)
//: ## Dictionaries
//: ### Instantiating a Dictionary
var languages1:[String:String]                           //Declare a Dictionary
var languages = ["eng":"English","esp":"Spanish","ita":"Italian"]   //Initialize a Dictionary
var languagesEmpty:[String:String] = [:]
//:### Common Dictionary syntax
languages["eng"]
languages.count
languages.isEmpty
languages["ita"] = nil
for (code,language) in languages {
    print("\(code) is \(language)")
}
//:### Extract keys and values
var languageCodes = Array(languages.keys)
var languageNames = Array(languages.values)
//: ## Collection Higher Order Functions
var distances = [3,1,2,5]
// Get return distances using for-in loop
var returnDistances:[Int] = []
for distance in distances {
    returnDistances.append(distance*2)
}
//: ### Map with function
func returnDistance(distance:Int)->Int {
    return distance*2
}
var returnDistances2 = distances.map(returnDistance)
returnDistances2
//: ### Map with closure
var returnDistances3 = distances.map( { $0 * 2 } )
returnDistances3
//: ### Filter
var filteredDistances = distances.filter( { $0 >= 3 })
filteredDistances
//: ### Reduce
var totalDistance = distances.reduce(0,combine: {$0 + $1})
totalDistance
//: ### Sort
var sortedDistances = distances.sort( { $0 > $1 } )
sortedDistances
//: ## Tuples
//: ### Instantiating a Tuple
var card1:(Int,String)                                  //Declare a Tuple
var card2 = (7,"♥")                                     //Initialize a Tuple
var card3:(number:Int,suit:String)                      //Declare a Tuple with element names
var card4 = (number:10,suit:"♠")                        //Initialize a Tuple with element names
//: ### Retrieve or set the tuple's values
print("You picked the \(card2.0) of \(card2.1)")        //Retrieve Tuple's values
card3.number = 12                                       //Set/retrieve tuple values with names
//: ### Return a tuple from a function
func pickACard()->(number:Int,suit:String) {
    return (number:2,suit:"♦")
}
let myCard = pickACard()
//: ### Tuple tricks: Initialize variables based on a tuple
let card = (number:10,suit:"♠")
var (number,suit) = card
number
suit
//: ### Tuple tricks: Define two values at once using a tuple
var (number2,suit2) = (13,"♣")
number2
suit2
//: ### Tuple tricks: Swap two values using tuples
var coinLeft = "dollar"
var coinRight = "penny"
(coinLeft,coinRight) = (coinRight,coinLeft)
coinLeft
coinRight
