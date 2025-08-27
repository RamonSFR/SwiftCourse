// property observers are pieces of code that are called when a property’s value is set or changed
// didSet is called after the changes
// willSet is called before the changes

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3