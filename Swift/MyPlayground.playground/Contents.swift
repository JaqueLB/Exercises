import UIKit

// implicit type variables
var str = "Hello, jaque"
var integer = 123
var multilineStr = """
Oi
Jaque
"""
var multilineWoN = """
Oi \
Jaque
"""
var pi = 3.141
var isTrue = true
var interpolation = "Meu nome eh: \(str)"

// constants
let aConstant = "Jaqueline"

// explicit type variables
var name: String = "Nathan"
var age: Int = 12
var pi2: Double = 1.414
var isOk: Bool = true

// complex types
var arr: [String] = ["biscoito", "bolacha"] // arrays cannot have mixed values, only one type per array. For a list that can have duplicates and where the order matters
var arr1 = arr[0]
var set1 = Set(["Bola", "macaco","banana","Bola"]) // duplicates are ignored. The order is random! Sets cannot have mixed value types. For a list of unique values with quick access to it
var tuple = (firstopt: "Bla", secondopt: 123) // you cannot remove any option, the size is fixed. Can be accessed by index or name of prop. For specific collections
var opt1 = tuple.firstopt
var opt2 = tuple.1
var dicti:[String:Int] = ["firstopt": 123, "secondopt": 234] // just like arrays, but let you specify anything for a key
var dicti1 = dicti["firstopt"]
var dictWithoutDefault = ["hanna": "banana", "Paulo":"rato"]
var jessica = dictWithoutDefault["jessica"]
var jessicaDefault = dictWithoutDefault["jessica", default: "waht"]
var emptyDict = [Int:String]()
emptyDict[1] = "primeiro valor"
var emptyArray = [Int]()
emptyArray.append(123)
var emptySet = Set<String>()
emptySet.insert("bla")
enum enumeration {
    case Bla
    case Two
}
var bla = enumeration.Bla
enum favoriteColors {
    case Nathan(color: String)
    case Jaque(color: String)
}
var jaqueColor = favoriteColors.Jaque(color: "blue")
enum Months:Int {
    case january
    case february
    case march
}
let zeroMonth = Months.january
let firstMonth = Months(rawValue: 2)
enum MonthsWithNumber:Int {
    case january = 1
    case february
    case march
}
let jan = MonthsWithNumber(rawValue: 2)

// operators
let value1 = 2
let value2 = 2
var result = value1 + value2
result = value1 * value2
result = value1 / value2
result = value1 % value2
result = value1 - value2
let strPiece1 = "Jaque"
let strPiece2 = "Botaro"
let fullName = strPiece1 + strPiece2 // you can combine either two strings or two numbers, but you cannot mix types
result -= 1 // get the last value of result and subtract 1 from it

// comparision
let isEqual = value1 == result
//let isEq = value2 == strPiece2
let what = strPiece2 <= strPiece1

let rawStr = #"This is a raw string "uhull" craziness"#

// ifs and loops
if value1 <= value2 {
    print("oi")
} else if value2 > value1 {
    print("wtf")
} else {
    print("Nani!")
}

switch result {
case -1:
    print("4")
    fallthrough // to enter both conditions
default:
    print("oloko")
}

switch result {
case (-6)..<(-1): // this does not includes the last number
    print("aqui nao entro")
case (-3)...(-1): // this includes the last number
    print("aqui eu entrei")
default:
    print("xi")
}

// loops
let scores = 1...3
let players = 1..<3
let cats = ["Meg", "Geneviv", "Trudy"]
for score in scores {
    print("Scroe is \(score)")
}
for _ in players { // do not create the temp constant, saving the work if you are not going to use it
    print("A player entered the game...")
}
for cat in cats {
    print("Cat \(cat) is cute!")
}

var number = 1
while number != 3 {
    print("Number is \(number)")
    number += 1
}

var blabla = 1
repeat {
    print("This is the first time! \(blabla)")
    blabla -= 1
} while blabla >= 2 // do while, actually execute at least one time before end

for score in scores {
    for cat in cats {
        print("Cat \(cat) scored \(score)")
        
        if (score == 3) {
            print("Bored, lets go out from this loop")
            break // this only breaks this inner loop, continuing the outer loop
        }
    }
    print("Score \(score)")
}

outerLoop: for score in scores {
    for cat in cats {
        print("Cat \(cat) scored \(score)")
        if (cat == "Meg") {
            print("Skip Meg")
            continue
        }
        
        if (score == 3) {
            print("Bored, lets go out from the first loop")
            break outerLoop // this breaks the outer loop, ending everything
        }
    }
    print("Score \(score)")
}

var counter = 0
while true {
    print("Infinite loops are weird!")
    counter += 1
    if (counter == 2) {
        break
    }
}

// enclosing and functions
let run = {
    print("running...")
}
let runWithArg = { (place: String) in
    print("running... in \(place)")
}
let runWithRet = { (place: String) -> String in
    print("running... in \(place)")
    return "Ok"
}
let isOkToRun = runWithRet("Austalia")
print(isOkToRun)
func travel(action: () -> Void) {
    print("I am ")
    action()
}
travel(action: run)

travel {
    print("wtf")
}

travel() {
    print("nani")
}
func travelWithParam(action: (String) -> Void) {
    print("I am ")
    action("Brazil")
    print(" Eita")
}

travelWithParam { (place: String) in
    print("Traveling at \(place)")
}

func travelWithParamReturn(action: (String, Int) -> String) {
    print("I am ")
    let piece = action("Brazil", 200)
    print(piece)
    print(" Eita")
}

travelWithParamReturn { (place: String, Int) in
    return "Traveling at \(place)"
}

travelWithParamReturn { // short version -> param and return types can be omitted
    "Traveling at \($0) at \($1) miles per hour" // return can be omitted because only one line
}

func travelReturnClosue () -> (String) -> Void {
    var counter1 = 0
    return {
        print("I am going to \($0)")
        counter1 += 1
    }
}

let closuree = travelReturnClosue()
closuree("Bahamas")
closuree("Bahamas")
