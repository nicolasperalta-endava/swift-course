//: [⇐ Previous: 04 - Closure Syntax](@previous)
//: ## Episode 05: Challenge - Closure Syntax
/*:
 ## Challenge 1
 Rewrite the long closure with the following syntax:
  * No parameter types
  * No parameter or return types
  * No parameter names
 Try passing the same values into each closure. Their printed results should match!
*/

// --------------------------------------
let copyLines = { (offense: String, repeatCount: Int) -> Void in
  print( String(repeating: "I must not \(offense).", count: repeatCount) )
}
// --------------------------------------

let closeClousure:(String, Int) -> Void = {print( String(repeating: "I must not \($0).", count: $1) )}

closeClousure("test",4)


//: [⇒ Next: 06 - forEach and map](@next)
