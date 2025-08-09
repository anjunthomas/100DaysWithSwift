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
