let opposites = [
    "Mario" : "Wario"
    "Luigi" : "Waluigi"
]

let peachOpposite = opposites["Peach"] // nil

// How to read optional value
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}


// guard
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}


// nil coalescing operator
// sets a default value case value is nil
let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

let input = ""
let number = Int(inpt) ?? 0
print(number)