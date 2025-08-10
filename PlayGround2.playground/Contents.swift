import UIKit

var greeting = "Hello, playground"

let constant = 100.0

let tempInFahrenheit = (constant * 9) / 5 + 32
print("Temperature in farenheight is \(tempInFahrenheit) and the temperature in celsius is \(constant)")

// arrays
var beatles = ["John", "Paul", "Ringo"]
print(beatles[0])

beatles.append("George")
print(beatles)
// note, arrays can only contain one type of data type

var scores = Array<Int>()
scores.append(100)
scores.append(200)
scores.append(300)

print(scores)
var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")

var albums2 = [String]() // this is another way that you can initialize an empty array
albums.remove(at: 1)
print(albums.count)

scores.remove(at: 2)
print(scores.count)

print(scores.contains(100))
print(scores.contains(300))


scores.append(50)
print(scores.sorted())
print(scores)
scores.sorted()
print(scores)

// dictionary
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee2["name", default: "Unknown"])


let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]


let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

// can initialize empty dictionary at first
var heights = [String: Int]()

heights["Yao Ming"] = 229
heights["O'Neal"] = 215

var archEnemies = [String: String]()

archEnemies["Batman"] = "The Joker"
archEnemies["Batman"] = "The Penguin"


// a set creates an array at first, then puts that array into a set
// sets print out of order and also gets rid of duplicates
var people = Set(["Denzel Washington", "Tom Cruise", "Nicholas Cage", "Samuel L Jackson"])
print(people)

people.insert("George Bush")
// sets can locate an item in it MUCH faster than an array

// enum
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

// Error types are best stored as enums
// Can also write it like this
enum Weekend {
    case saturday, sunday, friday
}

var day = Weekday.monday // this is initialized to an enum Weekday, it cannot change from this, so you don't need to say Weekday.
day = Weekday.tuesday
day = Weekday.friday // have to choose one of the days listed in the enum

day = .wednesday // like so

// type annotation
let surname: String = "Lasso"
var score: Int = 0
var score1: Double = 0
let playerName: String = "Roy"
var pi: Double = 3.141
var isAuthenticated: Bool = true

// array type annotation
var albums3: [String] = ["Red",  "Fearless"]

//dictionary type annotation
var user: [String: String] = ["id": "@twostraws"]

// set type annotation
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl"])

// array type annotation, but kind of redudant because implicit assumption of string array looking at contents
var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
var teams: [String] = [String]()

var cities: [String] = []

enum UIStyle{
    case light, dark, system
}

var style = UIStyle.light
style = .dark

let username: String
username = "@twostraws" // this is necessary, the variable declaration is like a promise, you must provide the initialization after
print(username)

let days: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Monday", "Tuesday", "Saturday"]
print(days.count)

let uniqueDays: Set<String> = Set(days)

print(uniqueDays.count)

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName { // checks to see which one comes first alphabetically
    print("It's \(ourName) vs \(friendName)")
} else{
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1, 2, 3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)

var numbers2 = [1,2,3]
numbers2.append(4)

// if greater than 3 numbers exist in the array remove the oldest number (similar to a queue)
if numbers2.count > 3 {
    numbers2.remove(at: 0) //
}

print(numbers2)


var name3 = "Taylor Swift"

if name3 == ""{
    name3 == "Anonymous"
}

if name3.isEmpty {
    name3 = "Anonymous"
}

if name3 != "Anonymous"{
    print("Hello \(name3)")
}

enum TransportationOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportationOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly")
} else if transport == .bicycle {
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic")
} else {
    print("I'm going to hire a scooter now!")
}

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("it should be a nice day")
case .rain:
    print("Pack an umbrella")
case .wind:
    print("wear something warm")
case .snow:
    print("School is getting cancelled")
case .unknown:
    print("Our forecast generator is broken!")
}

let isAuthenticated1 = true
print(isAuthenticated1 ? "Welcome": "Who are you")

let age = 18
let canVote = age >= 18 ? "Yes" : "No"

let hour = 12
print(hour < 12 ? "It's before noon" : "it's after noon")

let platforms = ["ios", "macOS", "tvOS"]
for os in platforms {
    print("Swift works great on \(os)")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}
print(lyric)

let names = ["Sterling", "Cyril", "Lana"]

for name in names {
    print("\(name) is a secret agent")
}


var countdown = 10

while countdown > 0 {
    print("\(countdown)")
    countdown -= 1
}

print("Blast Off!")


let amount = Double.random(in: 0...20)

let filesnames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filesnames {
    if filename.hasSuffix(".jpg") == false{
        continue
    }
    
    print("Found picture: \(filename)")
}


/* wanting to see how many scores player achieved before hitting a 0 */
let scores2 = [1, 8, 4, 3, 0, 5, 2]
var count = 0

for score in scores2 {
    if score == 0 {
        break
    }
    
    count += 1
}

print("You had \(count) scores before you got 0")

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            let attempt = [option1, option2, option3]
            
            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop // stopping as soon as the secret combination has been matched
            }
        }
    }
}

// fizzbuzz

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("FizzBuzz")
    } else if i.isMultiple(of: 3){
        print("Fizz")
    } else if i.isMultiple(of: 5){
        print("Buzz")
    } else {
        print(i)
    }
}
