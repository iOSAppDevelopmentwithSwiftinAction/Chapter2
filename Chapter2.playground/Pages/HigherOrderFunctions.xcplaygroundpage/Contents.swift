/*:
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous)
 ****
*/
//: # Collection Higher Order Functions
//:
import UIKit
var prices = [3, 1.99, 2, 1.99, 1.70]
var updatedPrices: [Double] = []
for price in prices {
  updatedPrices.append(price * 1.1)
}
//: ### Map with function
func updatePrice(price: Double) -> Double {
  return price * 1.1
}
var updatedPrices2 = prices.map(updatePrice)
//: ### Map with closure
var updatedPrices3 = prices.map( { $0 * 2 } )
//: ### Filter
var filteredPrices = prices.filter( { $0 >= 5 })
//: ### Reduce
var totalPrice = prices.reduce(0,{$0 + $1})
//: ### Sort
var sortedPrices = prices.sorted(by:{ $0 > $1 } )
//: [Table of Contents](Table%20of%20Contents) | [Previous](@previous)
