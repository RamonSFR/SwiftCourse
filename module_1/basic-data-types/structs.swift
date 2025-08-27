struct Album {
    let title: String
    let artist: String
    var isReleased = true

    func printSummary() {
        print("\(title) by \(artist)")
    }

    mutating func removeFromSale() {
        isReleased = false
    }
}

var whitePony = Album(title: "White Pony", artist: "Deftones")
print(whitePony.title)
whitePony.printSummary()