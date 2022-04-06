//: [⇐ Previous: 05 - Advanced Parameters](@previous)
//: ## Episode 06 - Challenge - Overloads & Parameters

/*:
 ## Challenge 1
 Write two possible overloads for the function below. You can use...
 * a different number of parameters
 * different argument labels
 * different parameter types
 * different return types
*/

func multiply(number: Int, by multiplier: Int) -> Int {
  return number * multiplier
}

func multiply(number: Int, by multiplier: Int) -> String {
  return String(number * multiplier)
}

let string: String = multiply(number: 2, by: 2)

let int: Int = multiply(number: 2, by: 2)


/*:
 ## Challenge 2
 Eliminate the overloads below by using a default value for a parameter.
*/

// --------------------------------------
func printMultipleOf(multiplier: Int, number: Int = 1) {
  print("\(multiplier) * \(number)  = \(multiplier * number)")
}
// --------------------------------------

// --------------------------------------
printMultipleOf(multiplier: 7)
printMultipleOf(multiplier: 11, number: 4)
// --------------------------------------


/*:
 ## Challenge 3
 1 - Change the function below so that it can modify the right parameter.
 2 - Call the function!
*/

var score = 50

func update(score: inout Int, withPoints points: Int) {
  score += points
}

update(score: &score, withPoints: 100)
score


//: [⇒ Next: 07 - Functions as Parameters](@next)
