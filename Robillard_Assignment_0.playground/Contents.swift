//: Playground - noun: a place where people can play

import UIKit

//Swift Basics
//comments
//variable types
//let
//var

print("Matt Robillard")

//everything is an object
var x = 5
print(x.predecessor())

//basic variables
let a = 3
var b = 5
b = a
//cannot do a = b because let can't be changed

//basic function
func basic()
{
    let statement = "This is a basic function"
    print(statement)
}

//basic function invocation
basic()

//basic class
class Student
{
    var name = ""
    var age = 0
    
    func sayName()
    {
        print("Hi, I'm \(self.name)")
    }
    
    func sayAge()
    {
        print("I'm \(self.age) years old")
    }
}

//object instantiation
var s1 = Student()
s1.name = "Matt"
s1.age = 22
s1.sayName()
s1.sayAge()
var s2 = Student()
s2.name = "Tim"
s2.age = 21
s2.sayName()
s2.sayAge()

//Swift functions
func sub(x: Int, y: Int) -> Int
{
    return x - y
}

let resultSub = sub(5, y: 3)

func half(x: Double) -> Double
{
    return x/2
}

let resultHalf = half(11)

func div(x: Double, by: Double) -> Double
{
    return x/by
}

let resultDiv = div(25, by: 5)

//externalized parameters
func div2(x: Double, by y: Double) -> Double
{
    return x/y
}

let resultDiv2 = div2(10, by: 2)

func div3(x: Double, _ y: Double) -> Double
{
    return x/y
}

let resultDiv3 = div3(15, 3)

//Default parameters
func output(phrase: String = "hey", times: Int = 2)
{
    for _ in 1...times
    {
        print(phrase)
    }
}

output()
output("hello")
output(times: 1)
output("lol", times: 4)

//variadic parameters
func sayNums(nums : Int...)
{
    for num in nums
    {
        print(num)
    }
}

sayNums(5)
sayNums(5,4,3,2,1)

//inoutparameters
func switchNums(inout x:Int, inout with y:Int)
{
    let z = x
    x = y
    y = z
}

var first = 1
var second = 2
switchNums(&first, with: &second)
print(first)
print(second)

//functions as values
func doTheMath(mathFunction: (x: Int, y: Int) -> Int) -> Int
{
    let mathResult = mathFunction(x: 10, y: 5)
    return mathResult
}

func function(y: Int, z: Int) -> Int
{
    return y - z
}

doTheMath(function)

//passing in an anonymous function
doTheMath { (x, y) -> Int in (x + y)/y }

//defining an anonymous function
let anon =
{
    (x: Int, y: Int) -> Int  in
    return (x + y)/y
}

doTheMath(anon)

//variables
//implicit
var num = 3
x.dynamicType //This is an Int Type

//explicit
var num2 : Int

var phrase : String = "word"

let f = 2.0
f.dynamicType //This is a Double Type

//explicit and initialization
let width : CGFloat = 50
let height : CGFloat = 10

let view = UIView(frame: CGRectMake(0,0,width,height))
view.backgroundColor = UIColor.blueColor()

enum BodyPart
{
    case Hand
    case Head
    case Foot
}

let part1 = BodyPart.Hand
var part2 : BodyPart

part2 = .Foot

//computed initializers
let random = rand()

var isEven : Bool =
{
    if random % 2 == 0
    {
        return true
    }
    else
    {
        return false
    }
}()

class Group
{
    private var _totalPeople = 4
    var totalPeople : Int
        {
        get
        {
            return self._totalPeople
        }
        set
        {
            if newValue > 4
            {
                print("A group can have no more than 4 people")
            }
            else
            {
                self._totalPeople = newValue
            }
        }
    }
}

let grp = Group()
grp.totalPeople = 4
grp.totalPeople //value = 4
grp.totalPeople = 6 //prints statement

//Setter Observers
class Teacher
{
    var name : String = "" {
        willSet{
            print ("About to set teacher name to \(newValue)")
        }
        didSet {
            print ("Just changed teacher name from \(oldValue) to \(self.name)")
        }
    }
}

var t = Teacher()
t.name = "Bill"
t.name = "Adam"

//Simple Types
//Bool
func boolTest(x: Int, y: Int) -> Bool
{
    if (x % 2 == 0) && (y % 2 == 0)
    {
        return true
    }
    if (x % 2 == 0) || (y % 2 == 0)
    {
        return true
    }
    else
    {
        return false
    }
}
var bt = boolTest(4, y: 6)
//string interpolation
var s = "Hello \(t.name)"
for c in s.characters{
    print(c)
}

//string concatination
var sOther = "I'm Matt"

s.appendContentsOf(sOther)
print(s)

//range
for i in 1...10
{
    print("!")
}

let range = 1..<5
let arr = [1,2,3,4,5,6]
arr[range]

range.dynamicType

//Tuples
let (thing1, thing2) = (1, "two")
thing1
thing2

for (idx, element) in arr.enumerate()
{
    print("The \(idx) item is \(element)")
}
// associates element in arr with is number in the arr

func remove(char: Character, fromString phrase : String) -> (numRemoved: Int, newPhrase: String)
{
    //initialize return variables
    var phrase2 = ""
    var count = 0
    
    //iterate through charactes in the string
    for c in phrase.characters
    {
        if c == char
        {
            count += 1
        }
        else
        {
            phrase2 += String(c)
        }
    }
    
    return (count, phrase2)
}

let r = remove("a", fromString: "alabama")

r.numRemoved
r.newPhrase
r.0
r.1

r.dynamicType
//type (Int, String)

