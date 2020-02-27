func siftBeans(fromGroceryList : [String]) -> (beans: [String], otherGroceries: [String]) {
    var beans = [String]()
    var otherGroceries = [String]()
   
    for items in fromGroceryList {
        if items.hasSuffix("beans") {
            beans.append(items)
        } else {
            otherGroceries.append(items)
        }
    }
   
    return (beans, otherGroceries)
}
 
let result = siftBeans(fromGroceryList: ["green beans",
                                           "milk",
                                           "black beans",
                                           "pinto beans",
                                           "apples"])
print(result.beans)
print(result.otherGroceries)
//Make a calculator class with a function name “equals” that take an enum case as value like multiply, subtraction, addition, square root, division.
enum calculation{
    
    case Addision
    case multiplication
    case divide
    case sub
}

class Calculator{
    var a = 10
           var b = 11
           var c = 0
    func equals1(cal :calculation) {
       
        switch cal {
            
        case .Addision:
            c=a+b
            print(c)
            break
            
        case .divide:
            c=a%b
            print(c)
            break
            
        case .multiplication:
            c=a*b
            print(c)
            break
            
        default:
            print(a-b)
            break
            
        }

        equals1(cal: .Addision)

    }
    
    
}

//Question 3 -
//
//Make the same calculator using functions as an argument, define all type functions in a struct.
struct Operation {

       static func addition(a : Int, b : Int) -> Int {
           return a + b
       }

       static func subtraction(a : Int, b : Int) -> Int {
           return a - b
       }

       static func multiplication(a : Int, b : Int) -> Int {
           return a * b
       }

       static func division(a : Int, b : Int) -> Int {
           return a / b
       }
       
   }


let abc2 = abc.equals(argumentAs: Operation.addition(a:b:), num1: 1, num2: 2)



