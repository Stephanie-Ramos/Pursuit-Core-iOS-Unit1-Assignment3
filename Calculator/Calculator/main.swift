//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

// Q 1a Command Line Math Stuff
print("A Command-Line Calculator:")
print("Please enter an equation that contains an arithmetic operator and two numbers.")

func mathStuffFactory(opString: String) -> (Double, Double) -> Double { // this mathStuffFactor function takes a string from the user and converts it to a tuple and converts it to a double.
    switch opString { // after the user has inputed the equation, the switch statement tests if the user has inserted the operature in order to execute the equation with x and y
    case "+":
        return {x, y in x + y } // this is a closure
    case "-":
        return {x, y in x - y }
    case "*":
        return {x, y in x * y }
    case "/":
        return {x, y in x / y }
    default:
        return {x, y in x + y }
    }
} // the function ends here

let userInput = readLine() ?? "0 + 0" // prompt the user to enter and nil coalescene it.
// without an input, does the computer compute the remaining? Entered | No I have a crash.
// 5 | crashed.
// 9 - 3 | I get a default value 0.0 from the nil coalescene
// Why am I not getting a result? You want the result to calculate







var randomOperations: [String] = ["+", "-", "*", "/"] // we have initialized a variable with the string datatype on all of the arthmetic operators.
var randomOperationsElement = randomOperations.randomElement() ?? "?" // we are letting the computer choice a random operator for the user to guess the operator with the nil coalescing
var isQuestionMark = false // we have created a variable with a bool data type to test if the randomOperationsElement computed the nil coalescene.

func takeInInput(input: String) -> Double { // takeInInput function takes an arguement label which is a string datatype returned to a double datatype.
    let userInputAsArray = input.components(separatedBy: " ") // the computer has created a constant and initialized it. The input string is then separated by components with the space, converting each element an index in between words. This turns the string into an array.
    var opStringRan = userInputAsArray[1] // the variable opString is initialized from the userInputAsArray from our array and access the second element of the array.
    if userInputAsArray[1] == "?" { // if the second element in the array is a question mark?
        opStringRan = randomOperationsElement// then reassign opString to randomOperationsElement takes a random operator and nil coalesccene it with addition
        isQuestionMark = true // then reassign isQuestionMark to true. This is our bool.
        // but we do not have a bool as our return data type.
    }
    let mathFunction = mathStuffFactory(opString: opStringRan) // we have a constant mathFunction that  calls our function mathStuffFactory, arguement opString with a string datatype. If the operator is a question mark (if it's true), then mathStuffFactory computes a random operator
    
    
    
    let num1 = Double(userInputAsArray[0]) ?? 0.0 //the first number
    let num2 = Double(userInputAsArray[2]) ?? 0.0 //the second number
    // let calcu = mathFunction(num1,num2)
    // calcu is a double
    // mathFunction is called and returns double datatype from a tuple
    // the mathFunction called mathStuffFactory to compute a random operator with a "?"
    // shouldnt this have a complie error? because you aren't computing the value of two nums. Yes! it actually occurred.
    
    // how would we compute the values then?
    // I would have a nested function.
    // would I have a teneray operator in my return statement? my return statement must have a double datatype regardless
    // i dont need a function. I need a closure that will take a parameter.
     // value was captured by the closure
    // Closures:
    // The datatypes are inferred.
    // Can capture and store references to any constants and variables
    // Nested functions are closures! that have a name and can capture values from their enclosing function
    
    
    
    
    
    
    return calcu
}

print(takeInInput(input: userInput)) // calling the function


//if isQuestionMark {
//    print("Guess what type of operator, +, -, * or /")
//    isQuestionMark = false
//}

// Q 2
//filter goes through the array and looks for an index that matches what you are searching for.
//Input: 1,5,2,7,3,4 by < 4
//Output: 1,2,3
// here: func myFilter(inputArray arrayOfInts: [Int], filter int: (Int) -> Bool) -> [Int] {
    // 1 parameter is inputArray the datatype is an array of ints
    // 2 paramenter is filter and the datatype is int that is converted to bool
                // the int is in closed paren, what does this mean? Yes, it means it's a closure.
                // to convert the int into a bool, you would need to use a conditional statement either a if/ switch.
    // the return datatype is an array of ints.
        
    // conditional statement
    
    //var inputArrayArray = inputArray
    // you want to break down your array to search for the elements if the element falls within the condition of the int filter
    
      // how do we use index here?. here (index, element) with enumerated actually takes the index int in your print statement
    
    // set a condition
//    var conditionOfInt = false
//  here:  var arrayOfIntNew = [Int]()
//
//
//  here:  for arrayOfInt in arrayOfInts {
//   here:     if int(arrayOfInt) {
            
        //if arrayOfInts[arrayOfInt] < int { // I didnt use the int from filter
//            conditionOfInt = true // I haven't done that yet
//           here: arrayOfIntNew.append(arrayOfInt)
        //arrayOfIntNew.append(arrayOfInts[arrayOfInt]) // I need to only input the arrayOfInt
        
//            return arrayOfIntNew // my return statement must be outside of the for loop
//        }
//    }
//   here: return arrayOfIntNew
//}
// what does the error mean? No answer.

// code
// this is where i left off.
// what is {(someNumber) -> Bool in return someNumber == 2}? A closure.
// this code would be after the 1 parameter
//let filterToSeeIfItsTwo: ((Int) -> Bool) = {
//    (someNumber) -> Bool in
//    return someNumber == 2
//}
//let filterToSeeICanDivideByThree: ((Int) -> Bool) = {
//    $0 % 3 == 0
//}
//
//
// this is a nested function
//func isThisNumberInTheArray(closure: (Int) -> Bool ) {
//    if closure (3)  {
//        print("the filter said yes")
//    } else {
//        print("the filter said no")
//    }
//}
//isThisNumberInTheArray(closure: filterToSeeIfItsTwo)
//isThisNumberInTheArray(closure: filterToSeeICanDivideByThree)
//isThisNumberInTheArray(closure: filterToSeeIfItsTwo)
//
// CLASS Notes
//func filterFunc(arr:[Double], closure:(Double) -> Bool) -> [Double] {
//
//    var result = [Double]()
//
//    for num in arr {
//        if closure (num) {
//            result.append(num)
//        }
//    }
//    return result
//}
//print(filterFunc(arr: <#T##[Double]#>, closure: <#T##(Double) -> Bool#>))



//read it or block extra user input

//print(myFilter(inputArray: [1, 2, 3, 6], filter: {$0 < 4}))

//if arrayOfInt < 2 {
//    print(myFilter(inputArray: [1, 2, 3, 6], filter: {$0 < 4}))
//} else {
//    print(myFilter(inputArray: [1, 2, 3, 6], filter: {$0 > 4}))
//}

