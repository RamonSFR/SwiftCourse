let sayHello = { (name: String) -> String in
    "Hello, \(name)!"
}

print(sayHello("Alice"))

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let onlyT = team.filter { $0.hasPrefix("T") }

print(onlyT)