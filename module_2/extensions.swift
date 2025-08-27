extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    mutating func trim() {
        self = self.trimmed()
    }

    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

var quote = "     The truth is rarely pure and never simple.       "
quote.trim()

let lyrics = """
It's like, I'm paranoid, lookin' over my back
It's like a whirlwind inside of my head
It's like, I can't stop what I'm hearing within
It's like the face inside is right beneath the skin
"""

print(lyrics.lines.count)