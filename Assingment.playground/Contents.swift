import UIKit


struct  EmployeePersonalInformation {

    var employeeID:Int!
    var  name:String!
    var  country:String!
    var  address:String!
    var hobbie:String?
    }

struct  EmployeeProfessional {

    var employeeID:Int!
    var  name:String!
    var  department:String!
    var  branch:String!
    var experience:String!


}
struct  ThirdEmployee  {
    var employeeID:Int!
       var  name:String!
       var  country:String!
       var  address:String!
       var hobbie:String?
    var  department:String!
    var  branch:String!
    var experience:String!

    
  
    
}
var e1:[EmployeePersonalInformation]=[EmployeePersonalInformation(employeeID: 1, name: "Shishir", country: "America", address: "Bostan"),EmployeePersonalInformation(employeeID: 2, name: "Raj", country: "India", address: "Jaipur",hobbie: "Cricket"),EmployeePersonalInformation(employeeID: 3, name: "sarthak", country: "Japan", address: "Tokyo"),EmployeePersonalInformation(employeeID: 4, name: "Tarun", country: "Britan", address: "London", hobbie: "football"),EmployeePersonalInformation(employeeID: 5, name: "Asit", country: "India", address: "UP", hobbie: "singing")]
var e2:[EmployeeProfessional]=[EmployeeProfessional(employeeID: 1, name: "Shishir", department: "Ios", branch: "India", experience: "2yrs"),EmployeeProfessional(employeeID: 3, name: "sarthak", department: "jvm", branch: "Japan", experience: "5yrs"),EmployeeProfessional(employeeID: 8, name:"kapil" , department: "full stack", branch: "china", experience: "12yrs"),EmployeeProfessional(employeeID: 9, name: "Aman", department: "jvm", branch: "India", experience: "5yrs")]
var common = [ThirdEmployee]()
for i in 0...3 {
    for j in 0...2{
        if e1[i].employeeID == e2[j].employeeID{
            common.append(ThirdEmployee(employeeID: e1[i].employeeID, name: e1[i].name, country:e1[i].country , address: e1[i].address, hobbie: e1[i].hobbie, department: e2[i].department, branch:e2[i].branch , experience: e2[i].experience))
    
        }
    }
}
//Second question

func country (FristStructure :[EmployeePersonalInformation], SecondStructure:[EmployeeProfessional] ){
   let mycountry="India"
    var answer=[String]()
    for i in 0...3 {
        if FristStructure[i].country==mycountry{
            answer.append(FristStructure[i].name)
            print(answer)
            
            
        }
        }
    }
country(FristStructure: e1, SecondStructure: e2)

//Third question
func department (FristStructure :[EmployeePersonalInformation], SecondStructure:[EmployeeProfessional] ){
   let mydepartment="Ios"
    var answer=[String]()
    for i in 0...2 {
        if SecondStructure[i].department==mydepartment{
            answer.append(SecondStructure[i].name)
            print(answer)
            
            
        }
        }
    }
department(FristStructure: e1, SecondStructure: e2)

//Fourth question

func countryBranch (FristStructure :[EmployeePersonalInformation], SecondStructure:[EmployeeProfessional] ){
   let mycountry="India"
    var answer=[String]()
    for i in 0...3{
        for j in 0...3{
        if FristStructure[i].country==mycountry &&  SecondStructure[j].branch==mycountry
            {
            answer.append(FristStructure[i].name)
            print(answer)
            }
            
        }
        }
        }

countryBranch(FristStructure: e1, SecondStructure: e2)
//Fifth Question

func hobby (FristStructure :[EmployeePersonalInformation], SecondStructure:[EmployeeProfessional] ){
    for i in 0...3{
        if FristStructure[i].hobbie != nil
            {
            print(FristStructure[i])
            }
            
        }
        }
        

hobby(FristStructure: e1, SecondStructure: e2)

//last question

func startwith (FristStructure :[EmployeePersonalInformation], SecondStructure:[EmployeeProfessional] ){
    for i in 0...3{
        if FristStructure[i].name.first == "S"
            {
            print(FristStructure[i])
            }
            
        }
        }
        

startwith(FristStructure: e1, SecondStructure: e2)
















