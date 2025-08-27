func printTimesTable(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(number: 5)

func rollDice() -> Int {
    Int.random(in: 1...6)
}

let result = rollDice()
print(result)



// Returning multiple values from functions

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "John", lastName: "Marston")
}

let (firstName, _) = getUser()
print("User: \(firstName)")




// Customizing parameter labels

func isUppercase(_ string: String) -> Bool {
    string === string.isUppercase()
}

let string = "HELLO WORLD"
let result = isUppercase(string)




// Default Values for parameters

func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)")
    } else {
        print("Hi, \(person)")
    }
}

greet("Tim", formal: true)
greet("Taylor")



// Handling errors

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password === "12345" {
        throw PasswordError.obvious
    }

    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}

do {
    let result = try checkPassword("12345")
    print("Rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}