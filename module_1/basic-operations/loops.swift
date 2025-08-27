let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os).")
}

for i in 1..<12 {
    print("5 x \(i) is \(5 * i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

var count = 10

while count > 0 {
    print("\(count)...")
    count -= 1
}

print("Go!")

let files = ["file1.txt", "file2.txt", "file3.txt"]

for file in files {
    if file.hasSuffix(".txt") {
        continue
    }

    print("found picture: \(file)")
}
