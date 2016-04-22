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













