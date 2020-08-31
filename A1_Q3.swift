enum Details {
    case Laptop(String,Float,String);
    case Mobile(String,Float,String);
    case Cable(Float);
}

var laptopDetail = Details.Laptop("Asus",96000.0,"Intel-i7");
var mobileDetail = Details.Mobile("Samsung",25000.0,"A-50");
var cableDetail = Details.Cable(2000.0);

switch laptopDetail {
    case .Laptop(let companyName, let price, let processor):
        print("The company name of the laptop is : \(companyName) \nThe price is : \(price) \nThe processor is: \(processor)\n");
    case .Mobile(let companyName, let price, let model):
        print("The company name of the laptop is : \(companyName) \nThe price is : \(price) \nThe model is: \(model) \n");
    case .Cable(let price):
        print("Price of the Cable is : \(price)")
}