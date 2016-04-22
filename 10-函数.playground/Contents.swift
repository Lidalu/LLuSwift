//: Playground - noun: a place where people can play

import UIKit

/*
 Swift定义函数的格式：
 
 语义：将前面计算的结果返回给 -》返回值
 func 函数名称（参数列表） -->返回值
 {
    执行代码
 }
 
 */

//没有返回值没有参数
//如果函数没有返回值，就写Void
//如果函数没有返回值还可以简写
//1.（）替代Void
//2.可以省略箭头 —> () ->void
func say() -> Void {
    
    print("hello")
}

say()

func said() -> () {
    print("he;;")
}
said()

func say2() {
    print("he;;")
}
say2()

//有返回值没有参数

func getNumber() -> Int {
    
    return 998
}
print(getNumber())


//有参数没有返回值
//- (Void)sum:(int)a b:(int)b
//swift2.0中，会自动将形参列表中的第二个参数开始的参数名称作为便签，以便于提高阅读性
//swift2.0之前，不会这样
func sum(a: Int, b: Int) {
    
    print(a + b)
}

sum(2, b: 1)

//x，y称之为外部参数，a/b称之为内部参数
func sum(x a: Int, y b: Int) {
    
    print(a + b)
}

sum(x: 4, y: 2)

//swift2.0之前的写法，只要加上#那么a/b既是外部参数，又是内部参数
//func sum3(#a: Int, #b: Int) {
//    
//    print(a + b)
//}
//
//sum3(a: 10, b: 30)
//有参数有返回值
func sum4(a: Int, b: Int) -> Int {
    
    return a * b
}

print(sum4(4, b: 9))


//使用func 来声明一个函数，使用名字和参数来调用函数。使用->来指定函数返回值
func greet(name: String, day: String) -> String {
    
    return "Hello\(name), today is \(day)"
}

greet("Bob", day: "Tuesday")

func greetC(name: String, eat: String) ->String {
    
    return "Hello\(name), I have ate \(eat)"
}

greetC("Lu", eat: "noodles")

//使用元祖来返回多个值
func getGasPrices() -> (Double, Double, Double) {
    
    return (3.59, 3.69, 3.79)
}

print(getGasPrices())

//函数的参数数量是可变的，用一个数组来获取它们

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            
            max = score
        } else if score < min {
            
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics([5, 3, 100, 3, 9])
print(statistics.sum)
print("max--\(statistics.1)")
print("min--\(statistics.0)")

func sumOf(numbers: Int...) -> Int {
    
    var sum = 0
    for number in numbers {
        
        sum += number
    }
    return sum
}
sumOf()
sumOf(42, 597, 12)

//写一个计算参数平均值的函数

func average(numbers: Int...) -> Int {
    
    var sum = 0
    for number in numbers {
        sum += number
        
    }
    
    let average = sum / numbers.count
    return average
}

average(42, 597, 12)

//函数可以嵌套。被嵌套的函数可以访问外侧函数的变量，你可以使用嵌套函数来重构一个太长或者太复杂的函数
func returnFifteen() -> Int {
    
    var y = 10
    func add() {
        
        y += 5
    }
    add()
    
    return y
    
}

returnFifteen()

//函数可以作为另一个函数的返回值
func makeIncrementer() -> ((Int) -> Int) {
    
    func addOne(number: Int) -> Int {
        
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
print("increment(7): \(increment(7))")

//函数可以当做参数传入另一个函数
func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
    
    for item in list {
        
        if condition(item) {
            
            return true
        }
    }
    
    return false
}

func lessThanTen(number: Int) -> Bool {
    
    return number < 10
}

var numbers = [20, 19, 42, 12]
hasAnyMatches(numbers, condition: lessThanTen)

//函数实际上是一种特殊的闭包，你可以使用{}来创建一个匿名闭包。使用in来分割参数并返回类型。

//numbers.map({
//    
//    (number: Int) -> Int in
//    let result = 3 * number
//    return result
//})

numbers.map({
    
    (number: Int) -> [Int] in
    if number % 2 != 0 {
        
      let number = 0
      print(number)
    }
    return numbers
})

print(numbers)





