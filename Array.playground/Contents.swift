import UIKit

//
var arr = [1,2,3,4,5]

var arrTwo : [Int] = [1,2,3,4,5]

var arrThree = Array(repeating: 0, count: 5)

var arrFour = [Int](arrayLiteral: 1,2,3,4,5)
//  2:  Create an immutable array containing 5 city names.

let cityNames = ["Jaipur","Bostan","Munich","Barcalona","Madraid"]

// 3: Create an array with city 5 city names. Later add other names like Canada, Switzerland, Spain to the end of the array in at least 2 possible ways.

var nameOfCities = ["Jaipur","Bostan","Munich","Barcalona","Madraid"]
nameOfCities.append("Canada")   // first way
nameOfCities.append(contentsOf : ["Switzerland","Spain"]) // second way
print(nameOfCities)

// 4: Create an array with values 14, 18, 15, 16, 23, 52, 95. Replace the values 24 & 48 at 2nd & 4th index of array

var arrDemo = [14,18,15,16,23,52,95]
arrDemo[2] = 24
arrDemo[4] = 48
print(arrDemo)

