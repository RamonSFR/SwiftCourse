// computed properties calculate their values every time they're accessed

struct Employee {
    let name: String
    var vacationAllowed = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
            vacationAllowed - vacationTaken
        }

        set {
            vacationAllowed = vacationTaken + newValue
        }
    }
}