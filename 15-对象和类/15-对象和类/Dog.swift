//
//  Dog.swift
//  15-对象和类
//
//  Created by ma c on 16/4/22.
//  Copyright © 2016年 lu. All rights reserved.
//

import Foundation

class Dog: NSObject {
    
    //如果定义属性的时候没有初始化，那么必须在后面写上一个？
    //Swift要求， 属性是必须有初始值的
    //只要在构造方法中对属性进行了初始化，那么就不用写“？”
    var name:String?
    /*
     如果是定义一个“对象属性”，那么后面可以写上？
     如果式定义一个“基本数据类型属性”，那么建议直接赋值为0
     因为super.init()方法在分配存储空间的时候，如果发现属性是一个对象，并且是一个可选类型，那么会给这个属性分配存储空间
     
 */
//    var age:Int?
    var age:Int = 0
    
    //注意：如果自定义了构造方法，并且没有重写父类默认的构造方法
    //那么默认的构造方法就是失效
//    override init() {
//        self.name = "diao"
//        self.age = 12
//    }
    
    //自定义构造方法
    //swift中有方法重载的概念
    //允许有同名的方法，只要形参或返回值不一样即可
    init(name: String, age: Int) {
        
        self.name = name
        self.age = age
    }
    
    init(dict: [String: NSObject]) {
        
        super.init()
        //注意点：Swift中如果想在构造方法中使用KVC给属性赋值
        //那么在使用KVC之前必须调用super.init()
        //调用super.init()的母的就是为了能在在KVC赋值之前给属性分配存储空间
        setValuesForKeysWithDictionary(dict)
    }
}