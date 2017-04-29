import Foundation

public struct BankAccount: CustomStringConvertible {
    
    var accountNumber: Int
    var owner: String
    var branch: String
    var balance: Double
    var interestRate: Double
    
    public init?(builder: BankAccountBuilder) { // failable initializer
        
        if let accountNumber = builder.accountNumber,
           let owner = builder.owner,
           let branch = builder.branch,
           let balance = builder.balance,
           let interestRate = builder.interestRate {

            self.accountNumber = accountNumber
            self.owner = owner
            self.branch = branch
            self.balance = balance
            self.interestRate = interestRate
            
        } else {
            
            return nil
            
        }
        
    }
    
    public var description: String {
        
        return "Bank Account number: \(accountNumber), owner: \(owner), " +
               "branch: \(branch), balance: \(balance), " +
               "interestRate: \(interestRate)"
        
    }
    
}
