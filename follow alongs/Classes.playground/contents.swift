// Simple class
class BankAccount: CustomStringConvertible {
    var name: String
    var balance: Double
    
    init(name: String, balance: Double) {
        self.name = name
        self.balance = balance
    }
    
    func withdraw(_ amount: Double) {
        balance -= amount
    }
    
    func deposit(_ amount: Double) {
        balance += amount
    }
    
    var description: String {
        return "\(name): $\(balance)"
    }
}


var daveAccount = BankAccount(name: "Dave", balance: 100.00)
daveAccount.deposit(50)
daveAccount.withdraw(10)


// Subclass

class AtmBankAccount: BankAccount {
    var withdrawFee: Double
    let defaultWithdrawFee: Double = 3.0 // const
    
    override init(name: String, balance: Double) {
        withdrawFee = defaultWithdrawFee;
        super.init(name: name, balance: balance)
    }
    
    init(name: String, balance: Double, withDraw: Double) {
        withdrawFee = withDraw
        super.init(name: name, balance: balance)
    }
    
    convenience init() {
        self.init(name: "Anonymous", balance: 0)
    }
    
    override func withdraw(_ amount: Double) {
        super.withdraw(amount)
        balance -= withdrawFee
    }
}

var bobAccount = AtmBankAccount()
bobAccount.deposit(100)
bobAccount.withdraw(40)





