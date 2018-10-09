import Foundation

///
/// Arrays - An ordered collection of elements
///

/// Creating Arrays

// An array of 'Int' elements
let oddNumbers = [1, 3, 5, 7, 9, 11, 13]

// An array of 'String' elements
let streets = ["Yonge St.", "King St.", "Queen St."]

// Shortened forms
var emptyDoubles: [Double] = []

// Long form
var emptyFloats: Array<Float> = Array()

// An array with a preinitialized fixed number of default values
var startingDigits = Array(repeating: 0, count: 10)


/// Accessing Array Values

// Using subscripts
print(oddNumbers[0], oddNumbers[3], oddNumbers[6])

// Using a for-in loop to iterate array's contents
for street in streets {
    print("I live near \(street) street")
}

// Check if array has any elements
if oddNumbers.isEmpty {
    print("There aren't any odd numbers")
} else {
    print("There are \(oddNumbers.count) odd numbers.")
}

// Accessing the first and last elements of an array
if let firstElement = oddNumbers.first {
    print(firstElement)
}

if let lastElement = oddNumbers.last {
    print(lastElement)
}


/// Adding and Removing Elements

var students = ["Mo", "Aamna", "Ruta", "Fernando", "Sunit", "Alvin"]

// Adding a single element
students.append("Chris")

// Adding multiple elements at the same time
students.append(contentsOf: ["Julie", "Marcus", "Tonya"])

// Adding elements in the middle of an array
students.insert("Stephen", at: 2)

// Removing the first element
students.removeFirst()

// Removing the last element
students.removeLast()

// Removing an element at an index
students.remove(at: 1)

// Replacing an element with a new value
students[0] = "George"

print(students)


/// Modifying Copies of Arrays

// Modifying arrays with Value types
var numbers = [1, 2, 3, 4, 5]
var numbersCopy = numbers
numbers[0] = 999

print(numbers)
print(numbersCopy)

// Modifying arrays with Reference types
class Spider {
    var legs = 8
}

var spiders = [Spider(), Spider()]
var spidersCopy = spiders

// Note: Modifications are seen from either array.
spiders[0].legs = 100
print(spiders[0].legs)
print(spidersCopy[0].legs)

// Note: Replacements, additions and removals are only visible in the modified array.
spiders[0] = Spider()
print(spiders[0].legs)
print(spidersCopy[0].legs)


///
/// Dictionary - A collection of key-value pairs
///

/// Creating Dictionaries

// A dictionary of key-value pairs
var responseMessages = [200: "OK",
                        403: "Access forbidden",
                        404: "File not found",
                        500: "Internal server error"]

// An empty dictionary
var emptyDictionary: [Int: String] = [:]


/// Accessing Dictionary Values

// Using a for-in loop to iterate a dictionaries contents
for (code, message) in responseMessages {
    print("The message for code \(code) is \(message)")
}

// Using subscripts
print(responseMessages[200])


/// Adding and Removing key-value pairs

// Removing a key-value pair
responseMessages[200] = nil

// Adding a key-value pair
responseMessages[400] = "Bad Request"

// Updating a key-value pair
responseMessages[400] = "Bad Request - The server cannot process this reqeust."


///
/// Optionals - Represents two possibilities, there is a value / there isn't a value
///

// Declaring Optionals
var middleName: String? = "Middleton"
print(middleName)

// Declaring Implicitly Unwrapped Optionals
var lastName: String! = "Jones"

// Force Unwrap
print(middleName!)

// Optional binding using if-let statements
if let name = middleName {
    print(name)
}

// Optional binding using guard statements
func shout(name: String?) {
    guard let name = name else {
        return
    }
    print(name)
}
