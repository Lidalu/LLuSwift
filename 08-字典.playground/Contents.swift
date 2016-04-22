//: Playground - noun: a place where people can play

import UIKit

//创建字典

//@{"key":"value"}
//swift中创建字典和创建数组一样，用[]
//[String: NSObject]类型是以后做iOS开发中最常见的一种格式
let dict = ["name": "llu", "age": 30]

//获取value
dict["name"]

//便利字典
for key in dict.keys {
    
    print(dict[key])
}

//利用元组类型遍历字典，会自动将字典中的key赋值给元祖中的第一个变量，将value赋值给元祖中的第二个变量
for (k, v) in dict {
    
    print(k)
    print(v)
}

//新增key / value

var dict2 = ["name": "lu", "age": 30]
dict2["gender"] = "man"
dict2

//更新key / value
//如果对应的key在字典中有，那么就会更新
dict2["name"] = "zs"
dict2

//删除
dict2.removeValueForKey("name")
dict2


//合并字典
var dict3 = ["score": 99]
for (key, value) in dict3 {
    
    dict2[key] = value
}
dict2
