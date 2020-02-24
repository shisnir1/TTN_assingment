import UIKit
// Initialization
//1. Implement the parameterised initialisation with class or struct.
class Temprature{
    var celcius : Double
    var farahenhiet : Double

    init(celcius : Double, farahenhiet : Double) {
        self.celcius = celcius
        self.farahenhiet = farahenhiet
    }
}

let temp = Temprature(celcius: 22.0, farahenhiet: 104.4)


//2.Write all the Rules of initialiser in Inheritance
//    ans: 1.A designated initializer must call a designated initializer from its immediate superclass
//    2. a convenience initializer must call another initializer from the same class.
//    3. a convience initializer must ultimately call a designated initializer
    

//
//Subscripts
//1. What is subscript ? Write down the declaration syntax.
// Subscripts are the shortcut for accessing the member elements of collection, list or sequence

//subscript(index : Int) -> Int{
//    get{
//
//    }
//
//    set(newValue){
//
//    }
//}
//2. Create a simple subscript that outputs true if a string contains a substring and false otherwise.
extension String {
    subscript(substring : String) -> Bool {
        get {
            let containingString = self.range(of: substring)
            
            return !containingString!.isEmpty
            
        }
    }
}
