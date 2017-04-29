//: Playground - noun: a place where people can play

let seed = BankAccountBuilder { builder in
    builder.accountNumber = 12
    builder.owner = "Daccio"
    builder.branch = "b1"
    builder.balance = 100.50
    builder.interestRate = 10.25
}

let myAccount = BankAccount(builder: seed)
