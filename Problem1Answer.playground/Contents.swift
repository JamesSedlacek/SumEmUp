import UIKit

/*
 Programming Problem #1 - Sum 'Em Up
 
 Description:
    Given two integers,
    determine the sum of the integers,
    between & including these two integers
 
 Input:
    Two integers 'm' & 'n'
    -1000 <= m
    n <= 1000
    m != n
 
 Output:
    list of numbers from lowest to highest,
    each separated by a plus sign '+',
    then an equal sign '=',
    and then the sum
 
 Sample:
    Input: m = 6, n = -3
    Output: "-3+-2+-1+0+1+2+3+4+5+6=15"
 */

//Function
//  Parameters: 2 integers
//  Return: String
func sumEmUp(_ m: Int, _ n: Int) -> String {

    //Variables:
    // theAnswer: String
    // theSum: Int
    var theAnswer = ""
    var theSum = 0

    //Find the lowest & the highest
    let lowest = m < n ? m : n
    let highest = lowest == n ? m : n

    //Check to see if they are valid input
    if lowest < -1000 { return "" }
    if highest > 1000 { return "" }
    if lowest == highest { return "" }

    //Loop from lowest to highest
    //  add to the sum
    //  add to the answer
    // if NOT at the end, add a '+' to the answer
    for currentNum in lowest...highest {
        theSum += currentNum
        theAnswer += String(currentNum)
        if currentNum != highest { theAnswer += "+" }
    }

    //add a '=' to the answer
    //add the sum to the answer
    theAnswer += "="
    theAnswer += String(theSum)

    //return the answer
    return theAnswer
}

//Test the Function
print(sumEmUp(2, 4)) // Output: "2+3+4=9"
print(sumEmUp(6, 12)) // Output: "6+7+8+9+10+11+12=63"
print(sumEmUp(6, -3)) // Output: "-3+-2+-1+0+1+2+3+4+5+6=15"

