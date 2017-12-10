class BankAccount {
    
    var accountName:String
    var accountBalance: Double = 0.0
    //static variable bound to class, need to be called with classname.static_var_name
    static var accounts: Int = 0
    
    //initializer aka contructor
    init(accountName:String){
        BankAccount.accounts += 1
        self.accountName = accountName
    }
    
    //overload the constructor
    init (accountName:String,accountBalance:Double){
        BankAccount.accounts += 1
        //class atribute = function parameter
        self.accountName = accountName
        self.accountBalance = accountBalance
    }
    
    //methods for modeling behaviour
    func checkBalance (){
        print("\(accountName)'s balance is \(accountBalance)")
        
    }
    
    func depositMoney(amount:Double){
        accountBalance += amount
    }
    
    func withdrawMoney(amount:Double){
        accountBalance -= amount
    }
}

//instanciation of objects
/*
 var john = BankAccount(accountName: "Savings")
john.checkBalance()
john.depositMoney(amount: 21)
john.checkBalance()

var anthony = BankAccount(accountName: "Salary", accountBalance: 100)
print(BankAccount.accounts)
 */

//INHERITANCE
class ING : BankAccount{
    //override the method from baseclass
    override func checkBalance() {
        //call the functionality from the overriden methof from base class
        super.checkBalance()
        //new functionality added
       print("Account ING")
    }
}

var newAccount = ING(accountName: "Savings")
newAccount.checkBalance()
