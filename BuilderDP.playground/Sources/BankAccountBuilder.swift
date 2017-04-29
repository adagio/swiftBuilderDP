import Foundation

public class BankAccountBuilder {
    
    public var x: Double?
    public var accountNumber: Int?
    public var owner: String?
    public var branch: String?
    public var balance: Double?
    public var interestRate: Double?
    
    typealias aBuilderClosure = (BankAccountBuilder) -> ()
    
    public init(buildClosure: aBuilderClosure) {
        buildClosure(self)
    }
    
}
