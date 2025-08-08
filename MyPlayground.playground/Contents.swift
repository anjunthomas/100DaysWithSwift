import UIKit

var greeting = "Hello, playground"

print(greeting)

var name = "Ted"
name = "Rebecca"
name = "Keeley" // can change the name over time

let character = "Daphne" // constant


var playerName = "roy"
print(playerName)

let quote = "Hello my name is \"ok then\""
print(quote)

print(quote.count) // tells you the length of a string
let hi = "hi"
print(hi.count)
print(hi.uppercased()) //

let filename = "photo.jpg"
print(filename.hasSuffix(".jpg"))

let reallyBig = 100000
let reallyBig1 = 100_000_000 // = the same as 100,000,000
var counter = 10
counter += 5
print(counter)

counter *= 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))


let number2 = 0.1 + 0.2
let a = 1
let b = 2.0
let c = a + Int(b) // can't add ints and doubles together without this
print(c)

print(number)


// Boolean
let goodDogs = true
var gameOver = false

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)

// toggle = !
print(gameOver)
gameOver.toggle()
print(gameOver)

let firstPart = "Hello"
let secondPart = "world"
let greeting2 = firstPart + " " + secondPart
print(greeting2)

// String Interpolation
let name1 = "Teddy"
let age = 26

let quote2 = "Then he tapped a sign saying \(name1) and my age is \(age)"

print(quote2)

print("5 x 5 is \(5*5)")
