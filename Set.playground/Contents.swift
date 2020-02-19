import UIKit

let houseAnimals:Set = ["Dog","Cat"]
let farmAnimals:Set = ["Cow","White Bird","Sheep","Dog","Cat"]
let cityAnimals:Set =  ["Blue Bird","Mouse"]

// Ques 1 :Determine whether the set of house animals is a subset of farm animals.

houseAnimals.isSubset(of: farmAnimals)

// Ques 2 :Determine whether the set of farm animals is a superset of house animals.
farmAnimals.isSuperset(of: houseAnimals)

// Ques 3 :Determine if the set of farm animals is disjoint with city animals.
farmAnimals.isDisjoint(with: cityAnimals)

// Ques 4 :Create a set that only contains farm animals that are not also house animals.
let onlyFarmAnimals = farmAnimals.subtracting(houseAnimals)

// Ques 5 :Create a set that contains all the animals from all sets.
let allAnimals = houseAnimals.union(farmAnimals).union(cityAnimals)
