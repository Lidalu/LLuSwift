//
//  Shape.swift
//  15-对象和类
//
//  Created by ma c on 16/4/22.
//  Copyright © 2016年 lu. All rights reserved.
//

import Foundation

class Person: NSObject {
    
    //在企业开发中，不建议这样写
    var _name:String?
    
    var name:String? {
        
        get {
           
         return _name
        }
        set {
        //只要外界给通过对象.name给name赋值，那么值就会保存在newValue
        _name = newValue
        }
    }
    
    var gender:String? {
        
        //设置完值之后调用
        didSet {
            
            print(gender)
            print(self)
        }
    }
    
    var age:Int? {
        
        //如果只重写了get方法，那么这个属性我们称之为计算型属性
        //也就是对应OC中的只读属性
        //注意点：计算型属性不占用内存空间的
        
        get {
            
            return 30
        }
    }
    
    
    
}
