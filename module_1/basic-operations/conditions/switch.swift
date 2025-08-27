enum Weather {
    case sun, rain, wind
}

let forecast = Weater.sun

switch forecast {
    case .sun:
        print("It's a sunny day")
    case .rain:
        print("Grab a umbrella")
    default:
        print("Should be okay.")
}