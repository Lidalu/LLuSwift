//: Playground - noun: a place where people can play

import UIKit

//在OC中定义字符串用@"" , swift中用""
//注意点：OC中的字符串是NSString，swift中的字符串是String
//OC中的字符串是一个对象，继承于NSObject
//Swift中的字符串是一个结构体
//Swift中的字符串的性能比OC中的高

var str = "Hello, playground"
var str2:String = "lilu"



//拼接
var str3 = "cool"
str2 += str3

//格式化
let num = 30
let name = "dafa"
//目标：name = lu， age = 30
//在swift中可以使用\()来拼接其他值
var str4 = "name = \(name), age = \(num)"

//09: 08: 13
//注意：所有的值都必须放到数组中，哪怕只有一个值也需要放到数组中
var str5 = String(format: "%02d: %02d: %02d", arguments: [9, 8, 13])

//截取
//注意：在swift中，如果需要截取字符串，简易使用OC的字符串来截取，因为swift中string的字符串截取方法使用起来非常复杂和蛋疼
//swift中的字符串可以和OC中的字符串可以非常非常方便的进行转换
var str6: NSString = "llllu"
var str7 = "llluu" as NSString

var subStr = str6.substringWithRange(NSMakeRange(1, 3))
//swift中字符串是支持直接遍历的

var str8 = "www.lidalu1125.cn"

for c in str8.characters {
    
    print(c)
}


