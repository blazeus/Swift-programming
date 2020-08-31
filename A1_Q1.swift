let names: [String?] = ["Dell","Samsung",nil,"Nokia","Asus","Mi"]
let prices: [Float?] = [nil,24000,nil,15000,nil,8000]
var priceAndValue: [String?:Float?] = [:];
var key: String? = nil; 
var value: Float? = nil;

for x in 0..<names.count {
    if(names[x] != nil){
        key = names[x]!;
    } else {
        key = nil;
    }
    if(prices[x] != nil){
        value = prices[x]!;
    } else {
        value = nil;
    }
    priceAndValue[key] = value;
}
for (Dkey,Dvalue) in priceAndValue{
    if(Dkey != nil){
        switch(Dkey!) {
            case "Samsung": 
            if(Dvalue != nil) {
                    print("The price of \(Dkey!) is: \(Dvalue!)")
                } else {
                    print("The price of \(Dkey!) is: NA")
                }
                break;
            case "Mi": 
            if(Dvalue != nil) {
                    print("The price of \(Dkey!) is: \(Dvalue!)")
                } else {
                    print("The price of \(Dkey!) is: NA")
                }
                break;
            case "Nokia": 
            if(Dvalue != nil) {
                    print("The price of \(Dkey!) is: \(Dvalue!)")
                } else {
                    print("The price of \(Dkey!) is: NA")
                }
                break;
            case "Apple": 
            if(Dvalue != nil) {
                    print("The price of \(Dkey!) is: \(Dvalue!)")
                } else {
                    print("The price of \(Dkey!) is: NA")
                }
                break;
            case "Realme":
                if(Dvalue != nil) {
                    print("The price of \(Dkey!) is: \(Dvalue!)")
                } else {
                    print("The price of \(Dkey!) is: NA")
                }
                break;
            default:
                print("\(Dkey!) is not a mobile")
        }
    }
}
