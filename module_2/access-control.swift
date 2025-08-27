// ACCESS CONTROL IN SWIFT
// private = accessible only within the same struct or class
// private(set) = can be read publicly, but can only be modified within the struct or class
// fileprivate = accessible within the same file
// public = everyone can access


struct BankAccount {
    private(set) var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) {
        if funds >= amount {
            funds -= amount
            return true
        }

        return false
    }
}

let account = BankAccount(funds: 100)
print(account.funds)
account.funds += 120 // error