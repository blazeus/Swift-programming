protocol RBI {
    var balance: Float {get set}

}


extension RBI{
    func montlyROI()->Float{
        return (balance * 0.001)
    }
}


class Bank: RBI
{
    var balance: Float
    var accountno :Int
    var accountHolderAge : Int
    
    func montly()->Float{
        return (balance * 0.002)
    }
    
    init(balance: Float,accountno : Int, accountHolderAge : Int)
    {
        self.balance = balance
        self.accountno = accountno
        self.accountHolderAge = accountHolderAge
    }
}

class PNB: Bank
{
    var debitCardLimit : Float
    
    //Used override to Override the montly function
    override func montly()->Float{
        return (balance * 0.025)
    }
    
    init(balance: Float,accountno : Int, accountHolderAge : Int, debitCardLimit : Float)
    {
        self.debitCardLimit = debitCardLimit
        //Used super.init() to initialize the variables of the parent class
        super.init(balance: balance, accountno: accountno, accountHolderAge: accountHolderAge)
        self.balance = balance
        self.accountno = accountno
        self.accountHolderAge = accountHolderAge
    }
    
} 


class SBI: Bank
{
    var creditCardLimit : Float
    init(balance: Float, accountno : Int, accountHolderAge : Int, creditCardLimit : Float)
    {
        self.creditCardLimit = creditCardLimit
        //Used super.init() to initialize the variables of the parent class
        super.init(balance: balance, accountno: accountno, accountHolderAge: accountHolderAge)
        self.balance = balance
        self.accountno = accountno
        self.accountHolderAge = accountHolderAge
    }
} 

//Initialization testing
var account1 = SBI( balance: 10000, accountno: 12321, accountHolderAge: 35, creditCardLimit: 1000000)
print(account1.balance)
print(account1.montly())
