class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a week.")
    }
}

// class herritage
class Developer: Employee {
    func work() {
        print("I'm coding for \(hours) hours a day.")
    }

    override func printSummary() {
        print("I spend \(hours) hours a day fighting over tabs vs spaces")
    }
}

let novall = Developer(hours: 8)
novall.printSummary()
novall.work()



// Class initializers

class Vehicle {
    let isEletric: Bool

    init(isEletric: Bool) {
        self.isEletric = isEletric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isEletric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isEletric: isEletric)
    }
}

class Actor {
    var name = "Nicolas Cage"
}

var actor1 = Actor()
var actor2 = actor1

actor1.name = "Tom Cruise"
print(actor1.name)
print(actor2.name)



// Classes in Swift can have a deinitializer
class Site {
    let id: Int

    init(id: Int) {
        self.id = id
        print("Site \(id): i've been created")
    }

    deinit {
        print("Site \(id): i've been destroyed")
    }
}

for i in 1...3 {
    let site = Site(id: i)
    print("Site \(site.id): i'm in control!")
}


// Classes can change variables properties even if they're constants
// even withou mutating functions


class Singer {
    var name = "Adele"
}

let singer = Singer()
singer.name = "Justin"