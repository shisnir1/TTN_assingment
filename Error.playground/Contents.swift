//Question 1
//In Swift, errors are represented by values of types that conform to the Error protocol. This empty protocol indicates that a type can be used for error handling.

enum RegistrationError: Error {
    case invalidEmail
    case invalidPassword
    case invalidPhoneNumber
}
//Write a failable initialiser for a class which throws a error  “Object not able to initialise” description a initialisationFailed case, Catch the error and print its error description.

enum FirstError : Error {
    case initialisationFailed
}

class FirstClass {
    var abc: String?
    
    init?(xyz : String?) throws {
        
        if xyz!.isEmpty {
            throw FirstError.initialisationFailed
        } else {
        self.abc = xyz
        }
    }
    
}



do {
    var obj1 = try FirstClass(xyz: "")
} catch FirstError.initialisationFailed {
    print("Object Not Initialized")
}
//Explain the difference try, try?, try! , make sure to write a program to explain the difference.
//Ans:
// When using try, our throw function has to be wrapped in a do-catch statement. This allows us to customize our error handling and perform specific actions based on the error.

enum SecondError : Error {
    case initialisation
}

class SecondClass {
    var abc: String?
    
    init?(xyz : String?) throws {
        
        if xyz!.isEmpty {
            throw SecondError.initialisation
        } else {
        self.abc = xyz
        }
    }
    
}



do {
    var obj1 = try SecondClass(xyz: "")
} catch SecondError.initialisation {
    print("Object Not Initialized")
}


// try? let’s us ignore our error and allow them to become nil whenever our function throws them. For this reason, we do not have to wrap our code in a do-catch statement
 var obj2 = try? SecondClass(xyz: "")



//try! is used when we know there is no possible way our method will fail, or if this line of code is so fundamental that our whole app might as well crash if there is in fact an error
var obj3 = try! SecondClass(xyz: "Hello")
