//: # Optionals
//:
import UIKit
//: ## Declaring an optional
var main:String?
main = "Steak"
/** print("Your \(main.uppercased()) is served!")    //Error - need to unwrap the optional **/
//: ## Forced Unwrapping
print("Your \( main!.uppercased() ) is served!")

if main != nil {
  print("Your \( main!.uppercased() ) is served!")
}

//: ## Optional Binding
if let mainValue = main {
  print("Your \( mainValue.uppercased() ) is served!")
}

if let main = main {
  print("Your \( main.uppercased() ) is served!")
}

//: ### Pyramid of doom
var drink:String? = "Malbec"
if let main = main {
  if let drink = drink {
    print("Your \( main.uppercased() ) pairs well with \(drink.uppercased() )")
  }
}
//: ### Multiple optional binding
if let main = main, let drink = drink {
  print("Your \( main.uppercased() ) pairs well with \(drink.uppercased() )")
}
//: ### Guard statement
func serve(drink: String) -> String {
  guard drink != "KoolAid" else {
    return("Don't drink the KoolAid")
  }
  return("Your \(drink) is served")
}
serve(drink: "Ginger beer")                      //Experiment <- Make the drink KoolAid
//: ### Guard let statement
func serve2(drink: String? = nil) -> String {	//#A
  guard let drink = drink else {
    return("No drink for you!")
  }
  guard drink != "Kool-Aid" else {
    return("Don't drink the Kool-Aid!")
  }
  return("Your \(drink) is served")
}
serve2(drink: "Santana champ")                  //Experiment <- Make this value nil

//: ### Guard let with condition
func serve3(drink: String? = nil) -> String {	//#A
  guard let drink = drink,drink != "Kool-Aid" else {
    return("No drink for you!")
  }
  return("Your \(drink) is served")
}
serve3(drink: "Gin and Juice")
//: ### Ternary conditional operator
var defaultMix = "Stirred"
var specialMix:String? = "Shaken"
let prepareMartini = specialMix != nil ? specialMix : defaultMix
//: ### Nil coalescing operator
let prepareMartini2 = specialMix ?? defaultMix
//: ## Implicitly unwrapped optionals
var main2:String!                                //Implicitly unwrapped optional
main2 = "Steak"                                  //Experiment <- Comment out this line
print("Your \(main2.uppercased()) is served!")

//: ## Optional chaining
//: ### With a two-dimensional array:
var reserved = [[true,  true,  false],
                [false, false, false],
                [true,  true,  false]
]
//: ### To get the top left pos, you could use multiple optional binding:
if let firstRow = reserved.first, let firstTable = firstRow.first {
  let reservedText = firstTable ? "reserved" : "vacant"
  print("Best table in the house is \(reservedText)!")
}
//: ### OR - you could use optional chaining!
if let firstTable = reserved.first?.first {
  let reservedText = firstTable ? "reserved" : "vacant"
  print("Best table in the house is \(reservedText)!")
}
