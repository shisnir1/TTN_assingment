import UIKit

// Ques 1: Create an empty dictionary with keys of type String and values of type Int and assign it to a variable in as many ways as you can think of (there's at least 4 ways).

var emptyDict: [String:Int] = [:]
var emptyDict1 = [String: Int]()
var emptyDict2 = Dictionary<String, String>()
var emptyDict3 :Dictionary<String,String> = [String: String]()

//2. Create a mutable dictionary named secretIdentities where the key value pairs are "Hulk" -> "Bruce Banner", "Batman" -> "Bruce Wayne", and "Superman" -> "Clark Kent".
var secretIdentities = ["Hulk" : "Bruce banner", "Batman" : "Bruce Wayne", "Superman" : "Clark Kent"]

//3. Create a nested structure of Key-value pair.
let nesterStructureOfKeyValue : [String : AnyObject] = ["Hulk" : ["Bruce" : "Banner"] as AnyObject,
                                                        "Batman" : ["Bruce" : "Wayne"] as AnyObject,
                                                        "Superman" : ["Clark" : "Kent"] as AnyObject,
                                                        "Spiderman" : ["Peter" : ["Ben" : "Parker"]] as AnyObject]


// Ques 4: Print all the keys in the dic.
var secretIdentities = ["Hulk":"Bruce Banner","Batman":"Bruce Wayne","Superman":"Clark Kent"]
for key in secretIdentities.keys{
    print("\(key)")
}
