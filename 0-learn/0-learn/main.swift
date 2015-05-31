//
//  main.swift
//  0-learn
//
//  Created by xuthus on 15/5/14.
//  Copyright (c) 2015年 xuthus. All rights reserved.
//

import Foundation

var languageName: String = "Swift" //oc Na string

let Name = "Swift"
let year:Int = 2015
let version: Double = 1.0
let π = 3.1415926
var 我 = "我是我"
println(languageName)
println(我)
println("Hello, World!")

//for character in Name{
//    println(character)
//}

//合并字符串 使用+
let happy = Name + 我
println(happy)
let a = 3 ,b = 4
let word = "\(a) 乘以 \(b) = \(a*b)"
println(word)
//可变性 字符串 类型  var 可变 let 常量不可变

var names = ["a","b","c","d",7,8.90001,π]

var number = ["ant":6,"snake":0,"dog":4]

println(names)
//for character in 1...9{
//    println(character)
//}

for (name,leg) in number{
   // println("one \(name) has\(leg)")
}
//修改数组
var shoppingList = ["age","tofu","tel"]
println(shoppingList[0])
shoppingList += ["beer"]
shoppingList += ["ok","haha"]
println(shoppingList)
shoppingList[3...5] = ["en","hh","ii"]
println(shoppingList)

number["pap"] = 99
number["pap"] = 8
println(names[6])
println(number["pap"])

var passiblelegConut: Int? = number["snake"]
if passiblelegConut == nil {
    println("none")
}else{
    println(passiblelegConut)
}

var intarr:[Int] = [1,2,3,4,5,2]
var strarray: [String] = ["ff","dd"]

var test = [1,2,3,4,5,"2.23"]
//test[5] = 9
test.append(9)
println(test[4])
// 数组 类型未确定的情况将转换为NSMU数组oc

//整形 赋值给 float 型 后 会转化为4.0
var explicitFloat: Float = 4
println(explicitFloat) //4.0
//值永远不会被隐式转换为其他类型 。如果你需要把一个值转换成其他类型，请显式转换
let label = "the width is "
let width = 90
//转换
let widthLabel = label + String(width) 
println(widthLabel)

//要创建一个空数组或者字典，使用初始化语法。
let empytArray = [String]()
let emptyArray = [String:Float]()

var intArray:[Int] = [1,24,5]

println("intArray=>\(intArray[1])")

var list = []
var occ = [:]

let individualScores = [73,43,103,87,12]
var teamScore = 0

for score in individualScores{
    if score > 50 { //if语句中，条件必须是一个布尔表达式
        teamScore += 3
    }else{
        teamScore += 1
    }
}
println(teamScore)

var optionalString: String? = nil// "Hello"
println(optionalString == nil)

var optionalName: String? = nil// "John Applessed"
var greeting = "Hello!"
if let nas = optionalName { //You can use if and let together to work with values that might be missing.
    greeting = "Hello,\(nas)" //如果是nil 则跳过 If the optional value is nil, the conditional 条件返回false is false and the code in braces is skipped.
}
//println(greeting)

let vegetable = "red pepper"

switch vegetable {
case "celery":
    let vegetableComment = "Add some raisinan and make ants on la log."
    //println(vegetableComment)
case "cucmber","watercress":
    let vegetableComment = "That would make a google tea sandwich"
    //println(vegetableComment)
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
    //println(vegetableComment)
default:
    let vegetableComment = "Everything teasetes good insoup."
    //println(vegetableComment)
}
//println(vegetableComment)
// switch 区块外 无法访问 变量???
var testComment = "this is test"
switch vegetable {
case "celery":
    testComment = "Add some raisinan and make ants on la log."
    //println(vegetableComment)
case "cucmber","watercress":
    testComment = "That would make a google tea sandwich"
    //println(vegetableComment)
case let x where x.hasSuffix("pepper"):
    testComment = "Is it a spicy \(x)?"
    //println(vegetableComment)
default:
    testComment = "Everything teasetes good insoup."
    //println(vegetableComment)
}
//println(testComment)

let interestingNumbers = [
    "Prime":[2,3,5,7,11,123],
    "Fibonacci":[1,1,2,3,5,8],
    "Square":[1,4,9,16,25]
]

var largest = 0
// iterate kind & numbers in interestingNumbers
for (kind,numbers) in interestingNumbers{
    for nubs in numbers {
        if nubs > largest {
            largest = nubs
           // println(kind)
        }
    }
}

//println(largest)

var n = 2
while n < 100{
    n = n * 2
}
println(n)
var m = 2
do {
    m = m * 2
}while m < 100
//println(m)

// ..< to
var firstForLoop = 0

for i in 0...4 { //..<  omits 忽略 its upper values
   // println(i) //包含0
    firstForLoop += i
}
//println(firstForLoop)

//func to declare 声明 a function
//in parentheses  圆括号 中是 arguments 
//use ->separate 分离 the parameter 参数 and String types  指定返回值 可以有？ 不过是Optional
func greet(nameFun: String,day: String) -> String?{ //greet is the Func name
    return "  Hello  \(nameFun), today is \(day). "
}
println(greet("Bob","Tuesday"))

func testFunc(testName: String,testThing:String) -> String{
    return "this is testName: \(testName) and testthing\(testThing) "
}
println(testFunc("haha","ok"))

// compound value 混合值
func calculateStatistics(scores: [Int]) -> (min: Int,max: Int,sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for scores in scores {
        if scores > max {
            max = scores
        }else if scores < min {
            min = scores
        }
        
        sum += scores
    }
    return (min,max,sum)
}

let statistics = calculateStatistics([5,3,100,3,9])
println(statistics.sum)
println(statistics.2)
println(statistics.max)
println(statistics.min)

println("-----")

func sumOf(numbers: Int ...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

println(sumOf())
println(sumOf(23))

func returnFiteen() -> Int {
        var y = 10
        func add(){
            y += 5
        }
        add()
        return y
}
println( returnFiteen() )

func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
println(increment(7))

func hasAnyMatches(list: [Int],condition: Int -> Bool) -> Bool {
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20,19,3,12]

hasAnyMatches(numbers, lessThanTen)

//closures blocks of code that can be called later  闭包
 var testMap = numbers.map({
    (number: Int) -> Int in
    if number < 10 {
        //println(number)
        //let resutl = 3 * number
        return 100
    }else{
       //let resutl = 0
         return 200
    }
    
    })

println(testMap)

let mappedNumbers = numbers.map({number in 3 * number})
println(mappedNumbers)

let sortedNumbers = sorted(numbers){ $0 > $1 }
println(sortedNumbers)

//class

class Shape{
    var numberOfSides = 0
    let letNumber = 19
    func simpleDescription() -> String{
        return "A shape with \(numberOfSides) sides. and \(letNumber)"
    }
    
}
// Create an instance 实例 of a class by putting parentheses 圆括号 after the class name. Use dot syntax 点语法 to access the properties 属性 and methods of the instance.
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription();
println(shapeDescription)


class NamedShape {
    var numberOfSide: Int = 0
    var name: String
    init(name:String){
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape named \(name) with \(numberOfSide) sides"
    }
}

var namedShape = NamedShape(name:"abc")
//println(namedShape.name)
//println(namedShape.simpleDescription())

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double,name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSide = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String { // 重写方法 Methods on a subclass 子类，子集 that override the superclass’s implementation 执行 are marked with override
        return "A squere with sides of length \(sideLength)"
    }
}

let tests = Square(sideLength: 4.2, name:"My test Square")
//println(tests.area())
//println(tests.simpleDescription())

class EquilateralTriangle: NamedShape {
    
    var sideLength:Double = 0.0
    
    init(sideLength:Double,name:String){
        self.sideLength = sideLength
        super.init(name:name)
        numberOfSide = 3 //非必须
    }
    
    var perimeter :Double {
        get {
            return 3.9 * sideLength
        }
        set {
            sideLength = newValue / 4.3 //newValue 就是传入的新值
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }
    
}

var triangles = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
println("--------")
println(triangles.perimeter)
println(triangles.sideLength)
triangles.perimeter = 1.0
println(triangles.sideLength)

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
println(triangleAndSquare.square.sideLength)
println(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
println(triangleAndSquare.triangle.sideLength)
println(triangleAndSquare.triangle.simpleDescription())

class Counter { // times 作为第二个参数的名字 在函数内容部使用
    var count: Int = 0
    func incrementBy(anmount: Int,numberOfTimes times: Int){
        count += anmount * times
    }
}
var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength

println(sideLength)

//enum Rank: Int {
//    case Ace = 1
//    case Two, Three, Four,Five,Six,Seven,Eight,Nine,Ten
//    case Jack,Queen,King
//    func simpleDescription() -> String{
//        switch self{
//        case .Ace:
//            return "ace"
//        case .Jack:
//            return "jack"
//        case .Queen:
//            return "queen"
//        case .King:
//            return "King"
//        default:
//            return String(self.rawValue)
//        }
//    }
//}
//
//let ace = Rank.Ace
//let aceRawValue = ace.rawValue
//println("---------")
//println(Rank.Jack)
//println(aceRawValue)

//enum Suit {
//    case Spades,Hearts,Diamonds,Clubs
//    func simpleDescription() -> String {
//        switch self {
//        case .Spades:
//            return "spades"
//        case .Hearts:
//            return "hearts"
//        case .Diamonds:
//            return "diamods"
//        case .Clubs:
//            return "Clubs"
//        }
//    }
//}
//let hearts = Suit.Hearts
////println(hearts.simpleDescription())
//
//struct Card {
//    var rank: Rank
//    var suit: Suit
//    
//    func simpleDescription() -> String {
//        return "the \(rank.simpleDescription()) of \(suit.simpleDescription())"
//    }
//}
//let threeOfSpades = Card(rank: .Three,suit: .Spades)
//println(threeOfSpades.simpleDescription())
//
//enum ServerResponse {
//    case Result(String,String)
//    case Error(String)
//}
//
//let success = ServerResponse.Result("6:00 am", "8:09 pm")
//println(success)




