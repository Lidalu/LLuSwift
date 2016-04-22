//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 Swift中定义常量和变量用let/var
 let代表定义一个常量
 var代表定义一个变量
 Swift中定义常量和变量不需要写数据类型，编译器会根据我们后面数据的真是类型自动推导
 
 Swift开发技巧：在做Swift开发中，我们需要经常使用option + click 键来查看方法或者变量
 int a = 10;
 let a = 10.1
 
 */

//常量
let a = 10
//a = 9.8 //常量不能修改

//变量var
//注意点：swift开发中没一条语句后面可以不写分号，但是写上也不会报错
//如果同一行有多条语句，那么每条语句后面必须写上分号
var value = 10
value = 8

//相当于OC中的NSLog
print(value)
