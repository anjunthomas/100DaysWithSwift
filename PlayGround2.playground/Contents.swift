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
    
    
    // using this to compute the property
    var vacationRemaining: Int { // computed properties must always have a specific type, here it is Int
        get{
            vacationAllocated - vacationTaken
        }
        set { // should return not print if these computed properties are strings
            vacationAllocated = vacationTaken + newValue // adding new value days that you used vacation + a given nubmer
        }
        
    }
}

var archer = Employee1(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
print(archer.vacationRemaining)
archer.vacationTaken += 4
print(archer.vacationRemaining)

// adding getter and setter for instance of Employee 1 called jessica
var jessica = Employee1(name: "Jessica", vacationAllocated: 14)
jessica.vacationTaken += 4
jessica.vacationRemaining = 5
print("this is how many vacation days are allocated for jessica")
print(jessica.vacationAllocated)


// Attaching the print() call directly to the property using didSet, so that whenever it changess it will print for us
// can be any code I think

struct Game {
    var score = 0 {
        willSet {
            print("Current value is: \(score)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("Score is now \(score)")
            print("Old value was \(oldValue)") // swift automatically stores these old and new values inside didSet and willSet respectively
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score -= 1



struct App {
    var contacts = [String]() {
        willSet { // willSet used by switft to handle animations so that it can take a screenshot of the user interface before a change
            print("Current value is: \(contacts)")
            print("new value will be: \(newValue)")
        }
        
        didSet{ // we use didSet because we want to take action after the change has happened so we can update our user Interface, save changes
            print("There are now \(contacts.count) contacts")
            print("old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
print("Adding new contact")
app.contacts.append("Allen W")

// note, will set is used much less than did set

struct BankAccount {
    var name: String
    var isMillionaire = false
    var balance: Int {
        didSet {
            if balance > 1_000_000 {
                isMillionaire = true
            } else {
                isMillionaire = false
            }
        }
    }
}

// Custom Initializer in swift
// these are specialized methods that are designed to prepare a new struct instance to be used
// swift silently generates one based on the properties we place inside the struct - memberwise intializer
// we can also create our own
// IMPORTANT
// all properties must have a value by the time the intializer ends

// adding custom initialion to the Player struct
struct Player {
    let name: String
    let number: Int
    
    init(name: String, number: Int) {
        self.name = name // using self to assign parameters to properties to clarify we mean "assign the name parameter to                my current instances name
        self.number = number
    }
}

// as long as properties havea value by the time the initilaizer ends, you can do anything
// if you are creating a custom init, then Swift discards the default memberwise initializerbecause it assumes you no longer need it

struct Player1{
    let name: String
    let number: Int
    
    init(name: String){
        self.name = name
        number = Int.random(in: 1...99) // initializing number inside of the init
    }
}

let player = Player1(name: "Megan R")
print(player.number)

// using extension to keep default memberwise intializer
struct Employee3 {
    var name: String
    var yearsActive = 0
}

extension Employee3 {
    init() {
        self.name = "Anon"
        print("Creating an anonymouse employee")
    }
}

let roslin = Employee3(name: "Laura Roslin") // this just creates an instance of Employee 3 with the memberwise (default) initializer
let anon = Employee3() // this creates a anonymous employee using the extended empolyee

struct Cabinet {
    var height: Double
    var width: Double
    var area: Double
    
    init (itemHeight: Double, itemWidth: Double) {
        height = itemHeight
        width = itemWidth
        area = height * width
    }
}
let drawers = Cabinet(itemHeight: 1.4, itemWidth: 1.0)
print(drawers)

struct BankAccount1 {
    private var funds = 0 // telling us that funds should only be accessbile inside the struct, so that instantiated BankAccount1.funds isn't accessible outside the struct
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

// funds is private inside of the struct, so you can no longer do this, account.funds -= 1000

// use private for don't let anyone outside the struct use this
// use fileprivate for don't let anything outside the current file use this
// use public for "let anyone, anywhere use this"

// private(set) - let anyone read this property, but only let my methods write it
// so you could print account.funds outside the struct, but only deposit() and withdraw() could actually change its value


struct Person{
    private var socialSecurityNumber: String
    init(ssn: String){
        socialSecurityNumber = ssn // self. is used when the property name and parameter name have the same names
                                    // you can use it here if you want, but it is not necessary
    }
}

let sarah = Person(ssn: "555-55-5555")


struct School {
    var staffNames: [String]
    private var studentNames: [String]
    init(staff: [String]) {
        self.staffNames = staff
        self.studentNames = [String]() // intitialized as an empty string array
    }
}

let royalHigh = School(staff: ["Mrs Hughes"])

//struct School1 {
//    var studentCount = 0 // static means that studentCount property and add function belong to the struct itself, rather than a particular instance of the struct
//    
//    static func add(student: String) {
//        print("\(student) joined the school")
//        studentCount += 1
//    }
//}
//

// using static properties to common data in apps
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFileName = "settings.json"
    static let homeURL = "http://www.hackingwithswift.com"
}

struct Employee5 {
    let username: String
    let password: String
    
    static let example = Employee5(username: "cfederico", password: "hairforceone")
    // this is commonly used to work in design previews
}

Employee5.example

struct Amplifier {
    static let maximumVolume = 11 // belongs to struct Amplifier
    var currentVolume: Int // an instance property of struct amplifier
}

struct Cat {
    static let allCats = [Cat]()
   
    static func chorus() {
        for _ in allCats {
            print("Meow")
        }
    }
}

//struct LegoBrick {
//    static var numbermade = 0
//    var shape: String
//    var color: String
//    init(shape: String, color: String){
//        self.shape = shape
//        self.color = color
//        LegoBrick.numbermade += 1
//    }
//}

// Checkpoint 6
struct Car {
    let model: String
    private let numberOfSeats: String
    var currentGear: String
    
    mutating func changeGear(to gear: String, isGearUp: Bool){
        self.currentGear = gear
        
        if isGearUp {
            self.currentGear = "Up"
        } else {
            self.currentGear = "Down"
        }
    }
    
    init(model: String, numberOfSeats: String, currentGear: String) {
        self.model = model;
        self.numberOfSeats = numberOfSeats;
        self.currentGear = currentGear;
    }
}

struct Sandwich {
    var name: String
    var fillings: [String]
}
let blt = Sandwich(name: "BLT", fillings: ["Bacon", "Lettuce", "Tomato"])

class Game1 {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game1()
newGame.score += 10 // this sets the score in the intance of class Game1 called newGame

class BoardGame {
    var name: String
    var minimumPlayers = 1
    var maximumPlayers = 4
    init(name: String) {
        self.name = name // only initializing name because all other stored properties were initialized before use with default values
    }
}

class TIE {
    var name: String
    var speed: Int
    init(name: String, speed: Int) {
        self.name = name
        self.speed = speed
    }
}
let fighter = TIE(name: "TIE Fighter", speed: 50)
let interceptor = TIE(name: "TIE Interceptor", speed: 70)

class VideoGame {
    var hero: String
    var enemy: String
    init(heroName: String, enemyName: String){
        self.hero = heroName
        self.enemy = enemyName
    }
}

let monkeyIsland = VideoGame(heroName: "Guybrush Threepwood", enemyName: "LeChuck")

class Image {
    var fileName: String
    var isAnimated: Bool
    init(fileName: String, isAnimated: Bool){
        self.fileName = fileName // parameters and properties have the same names, so Swift requires that we use self to distinguish the properties
        self.isAnimated = isAnimated
    }
}

class ThemePark {
    var entryPrice: Int
    var rides: [String]
    init(rides: [String]){
        self.rides = rides
        self.entryPrice = rides.count * 2
    }
}

class Podcast {
    var hosts: [String]
    init(hosts: [String]){
        self.hosts = hosts
    }
}

class Singer {
    var name: String
    var favoriteSong: String
    init(name: String, song: String){
        self.name = name
        self.favoriteSong = song
    }
}
let taylor = Singer(name: "Taylor Swift", song: "Blank Space")

class Employee6 {
    let hours: Int
    
    init(hours: Int){
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day")
    }
}

class Developer: Employee6 {
    func work() {
        print("I'm writing code for \(hours) hours")
    }
    
    // if a child class wants to change a method from a parent class, you must use override in the child class's version. This does two things
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) a day, but other times spend hours arguing about whether code should be indented")
    }
}
///
class Manager: Employee6 {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

// these child classes can refer directly to hours, it's as if they added that property themselves

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)

robert.work()
joseph.work()



let novall = Developer(hours: 14)
novall.printSummary()
// if you know your class should not suppport inheritance, you can mark it as final.
// final class = class can inherit from other things, but can't be used to inherit from

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

// a class that inherits from vehicle
class Car2: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool){
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric) // right IsElectric is the parameter from behicle, right hand is parameter from Car's initializer
    }
}

let teslaX = Car2(isElectric: true, isConvertible: false)

class Product {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Book: Product {
    var isbn: String
    init(name: String, isbn: String) {
        self.isbn = isbn
        super.init(name: name)
    }
}

class User {
    var username = "Anonymous"
}

var user1 = User() // creating an instance of the class
var user3 = user1 // taking a copy of user1 and changing the username value next

user3.username = "Taylor"
print(user1.username) // printing taylor for both user1 and user3
print(user3.username) //

class User6 {
    var username = "Anonymous"
    
    func copy() -> User6 {
        let user = User6()
        user.username = username
        return user
    }
}

var message = "Welcome"
var greeting5 = message
greeting5 = "Hello" // value types versus reference types
// classes use reference types
// using a class over a struct sends a strong message that you want the data to be shared somehow, rather than having lots of distinct copies

struct GalaticaCrew {
    var isCylon = false
}

var starbuck = GalaticaCrew()
var tyrol = starbuck
tyrol.isCylon = true
print(starbuck.isCylon)
print(tyrol.isCylon)

class Statue {
    var sculptor = "Unknown"
}

// this will create two different statues, so it will print two different sculptors
var venusDeMilo = Statue()
venusDeMilo.sculptor = "Alexandros of Antioch"
var david = Statue()
david.sculptor = "Michaelangelo"
print(venusDeMilo.sculptor)
print(david.sculptor)

// an example of class copying reference values
class Startup {
    var maxWarp = 9.0
}

var voyager = Startup()
voyager.maxWarp = 9.975
var enterprise = voyager
enterprise.maxWarp = 10.0
print(voyager.maxWarp)
print(enterprise.maxWarp)

class Hairdresser {
    var clients = [String]()
}
var tim = Hairdresser()
tim.clients.append("Jess")
var dave = tim
dave.clients.append("Sam")
print(tim.clients.count)
print(dave.clients.count)


// scope
// creating a variable inside a function, you can't access it from outside the function
// create a variable inside an if condition, that variable is not available outside the condition
/// create a variable inside a for loop, you can't user it outside the loop

class User7 {
    let id: Int
    
    init(id: Int){
        self.id = id
        print("User \(id): I'm alive!")
    }
    deinit { // do not write parentheses after denit
        print("User \(id): I'm dead!")
    }
}

// creating a user instance inside the loop and destroying it when the loop iteration finishes
for i in 1...3 {
    let user = User7(id: i)
    print("User \(user.id): I'm in control!")
}

// adding User instances as they were created, they would only be destroyed when the array is cleared
var users = [User7]()

for i in 1...3 {
    let user = User7(id: i)
    print("User \(user.id): I'm in control")
    users.append(user)
}

print("Loop is finished!")
users.removeAll() // kills off each instance of the class as the array clears
print("Array is clear!")

class Fairytale {
    deinit {
        print("And they lived happily ever after.")
    }
}

class User8 {
    var name = "Paul"
}

var user11 = User8() // try with let, it will be taylor
user11.name = "Taylor"
user11 = User8()
print(user11.name)



