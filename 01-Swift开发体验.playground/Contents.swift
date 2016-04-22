//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

 /* 创建对象
    OC:alloc / initWithXXX
    Swift: (xxx:)
 
    OC: [UIColor redColor]
    Swift:UIColor.redColor()
 
    OC: UIButtonTypeContactAdd
    Swift:UIButtonType.ContactAdd
 
    创建结构体
    OC CGPointMake()
    Swift: CGPoint()
 */
let view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100, height: 100))

view.backgroundColor = UIColor.redColor()

//枚举前面的枚举名称是可以省略的，开发中一般不会省略
let btn = UIButton(type: UIButtonType.ContactAdd)
btn.center = CGPoint(x: 50, y: 50)
view.addSubview(btn)


