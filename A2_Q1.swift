protocol Person {
    var name: String { get set }
    var age: Int { get set }  
}

extension Person {
    func showDetails()->Void{
        print("Name : \(self.name) \nAge : \(self.age)")
    }
}

protocol Occupation {
    var Profession: String { get set }
    var yearlySalary: Double { get set }
}

class Employee: Person, Occupation {
    var name: String = " "
    var age: Int = 0
    var id: Int = 0 
    var yearlySalary: Double = 0
    var monthlySalary: Float = 0 {
        didSet {
            yearlySalary = Double(monthlySalary * 12)
        }
    }
    var Profession: String = " "
    
    func showDetails()->Void {
        print("Name : \(self.name) \nAge : \(self.age) \nid : \(self.id) \nMonthly Salary: \(self.monthlySalary) \nProfession : \(self.Profession)")
        print("Yearly Salary : \(self.yearlySalary)")
    } 
    
    init() {
        name = " Something "
        age = 0
        id = 0 
        Profession = " "
        monthlySalary = 0
        yearlySalary = Double(monthlySalary * 12)
    }
    
    init?( name: String, age: Int, id: Int, monthlySalary: Float, Profession: String) {
        self.name = name
        self.age = age
        self.id = id
        self.Profession = Profession
        self.monthlySalary = monthlySalary
        self.yearlySalary = Double(monthlySalary * 12)
        if (yearlySalary < 100000) {
            print ("The variable is not initialized (Yearly Salary is below 100000 mark)")
            return nil
        }
    }
}

struct Student: Person{
    var regNo: Int 
    var name: String
    var age: Int
}

var person1 = Employee(name:"Kakashi Hatake",age:38,id:6,monthlySalary:90000,Profession:"6th Hokage")
var person2 = Employee(name:"Sizui Uchiha",age:18,id:8,monthlySalary:50000,Profession:"Programmer")
var person3 = Student(regNo:1,name:"Sasuke Uchiha",age:24)
var person4 = Student(regNo:2,name:"Itachi Uchiha",age:29)
var person5 = Student(regNo:3,name:"Madara Uchiha",age:58)

var persons = [AnyObject?]()
persons.append(person1! as AnyObject?)
persons.append(person2! as AnyObject?)
persons.append(person3 as AnyObject?)
persons.append(person4 as AnyObject?)
persons.append(person5 as AnyObject?)

// print(person1!.yearlySalary)
// person1!.monthlySalary = 20000
// print(person1!.yearlySalary)

for each in persons {
    if let _ = each!.self as? Occupation{
        if let obj = each as! Employee?{
            if (obj.monthlySalary>20000 && obj.Profession == "Programmer") {
                obj.showDetails()
            }
        }
    }
}


