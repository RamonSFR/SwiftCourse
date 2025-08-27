var colors = ["red", "green", "blue"]
let numbers = [4, 8, 16, 15]
var readings = [0.2, 0.6, 2.205]

print(colors[0])
print(readings[2])

colors.append("Yellow")
colors.remove(at: 0)
print(colors.count)

print(colors.contains("purple"))