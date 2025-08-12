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


// function syntax
func showWelcome(){
    print("Welcome to my app!")
    print("by default this prints out a conversation")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()

// parameter
func printTimesTables(number: Int){
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


func sameLetter(string1: String, string2: String) -> Bool {
    if string1.sorted() == string2.sorted(){
        return true
    }
    return false
    /* code could have been
    return string1.sorted() == string2.sorted()
     // since this is one line of code, you can remove the return keyword too
     
     
     */
}

let answer = sameLetter(string1: "hello", string2: "hi")
print(answer)


func pythagoras(base: Double, height: Double) -> Double{
    sqrt(base * base + height * height)
}

let result3 = pythagoras(base: 3, height: 4)
print(result3)

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift") // this is a tuple, use it to return multiple return types
}

let user2 = getUser()
print("Name: \(user2.firstName) \(user2.lastName)")


// same as above code but using tuple to return values now

func getUser2() -> (firstName: String, lastName: String){
    ("Taylor", "Swift")
}

let user4 = getUser2()
print("Name \(user4.firstName) \(user4.lastName)")

// or, elements can not have names in tuples

func getUser3() -> (String, String){
    ("Taylor", "Swift")
}

let user5 = getUser3()
print("Name \(user5.0) \(user5.1)")


func isUpperCase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLRD"
let result4 = isUpperCase(string)
print(result4)

// default values for any or all parameters
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end{
        print("\(i) x \(number) = \(i * number)")
    }
}

printTimesTables(for: 5)
printTimesTables(for: 7, end: 10)

// default parameters another example
var characters = ["Lane", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)

// real use case
func findDirections(from: String, to: String, route: String = "fastest", avoidhighways: Bool = true){
}

findDirections(from: "London", to: "Ibiza")
findDirections(from: "India", to: "New York", route: "scenic")
findDirections(from: "Scotland", to: "Germany", route: "scenic", avoidhighways: false)


// ERROR HANDLING
enum PasswordError: Error{ // there is an error type in swift
    case short, obvious
}

func checkPassword(_ password: String) throws -> String { // being marked with throws does not mean the function must throw errors, only that it might
    if password.count < 5 {
        throw PasswordError.short // coming from the enum case
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "excellent"
    }
}

func someRiskyWork(){
    print("hello")
}
// error handling after running the function
do {
    let result = try checkPassword("12345") // try must be written before calling all functions that might throw errors, and is a visual signal to developeres that regular code execution will be interrupted if an error happens
} catch PasswordError.short {
    print("Your password is too short")
} catch PasswordError.obvious {
    print("Your password is too obvious, change it to something more secure")
} catch {
    print("There was an unidentified error")
}

// Checkpoint 4

enum SquareRoot: Error{
    case outOfBounds
}

func findSquareRoot(number: Int) throws -> Int {
    if number < 1 || number > 10_000{
        throw SquareRoot.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == number{
            return i
        }
    }
    let defaultValue = 1
    return defaultValue
}

do {
    let result10 = try findSquareRoot(number: 25)
    print(result10)
} catch SquareRoot.outOfBounds{
    print("The number you chose was out of bounds")
} catch {
    print("There was an error")
}


func greetUser(){
    print("Hi There")
}

greetUser()

var greetCopy = greetUser // when you are copying functions, you don't add a parentheses after it
greetCopy

let sayHello = {
    print( "Hello")
}

sayHello()

let sayHello1 = { (name: String ) -> String in
        "Hi \(name)!"
}

var greetCopy1: () -> Void = greetUser // empty parenthesis means it accepts no parameters, returns no value, and doees not throug h errors

let team = ["gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

// closure in practice
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String ) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne"{
        return false
    }
    return name1 < name2
})

print(captainFirstTeam)

// Structs - this is our own complex data type with own variables and functions
struct Album { // a struct should be capitalized
    let title: String
    let artist: String
    let year: Int
    
    func printSummary(){
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()


struct Employee {
    let name: String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining >= days {
            vacationRemaining -= days
            print("I'm going on vacation")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

struct Employee1{
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int { // using this to compute the property
        vacationAllocated - vacationTaken
    }
}

var archer = Employee1(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
print(archer.vacationRemaining)
archer.vacationTaken += 4
print(archer.vacationRemaining)

