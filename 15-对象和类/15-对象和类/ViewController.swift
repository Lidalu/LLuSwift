//
//  ViewController.swift
//  15-对象和类
//
//  Created by ma c on 16/4/22.
//  Copyright © 2016年 lu. All rights reserved.
//

import UIKit

import Foundation
//在Swift中，如果想使用某一个类，是不用import头文件的
//因为Swift中新增了一个OC中以前没有的概念“命名空间”
//默认情况下，项目名称就是命名空间

//正是因为这样，所以在做Swift开发时有很多坑
//如果是Swift项目要使用第三方框架，那么建议使用cocoaPods来集成框架
//因为如果是通过cocoaPods集成的框架，在另外一个项目中，那么命名空间就不一样
//这样可以有效的避免，三方框架中的类名和我们自己的冲突

class Shape: NSObject {
    
    var numberOfSides = 0
    func simpleDescrition() -> String {
        
        return "A Shape With \(numberOfSides) sides."
    }
    
}

class NameShape {
    
    var numberOfSides: Int = 0
    var name: String
    //使用init来创建一个构造器
    
    //注意：self被用来区别实例变量。当你创建实例的时候，像传入函数参数一样给类传入构造器的参数。每个属性都需要赋值---无论是通过什么还是通过构造器
    
    //如果你需要在删除对象之前进行一些清理工作，使用deinit创建一个析构函数。
    init(name: String) {
        
        self.name = name
    }
    
    func simpleDescrition() -> String {
        
        return "A NameShape With \(numberOfSides) sides."
    }
    
}

//子类的定义方法实在它们的类名后面加上父类的名字，用冒号分割。创建类的时候并不需要一个标准的根类，所以你可以忽略父类

//子类如果要重写父类的方法的话，需要用override标记---如果没有添加override就会重写父类方法的话编译器会报错。编译器同样会检测override标记的方法是否确实在父类中
class Square: NameShape {
    
    var sideLength: Double
    init(sideLength: Double, name: String) {
        
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() -> Double {
        
        return sideLength * sideLength
    }
    
    override func simpleDescrition() -> String {
        return "A Square With Sides of Length \(sideLength)"
    }
    
}

class Circle: NameShape {
    
//    var numberOfSides: Int = 0
    
    var radicus: Double
    init(radicus: Double, name: String) {
        
       self.radicus = radicus
        super.init(name: name)
        numberOfSides = 1
    }
    func area() -> Double {
        
        return 3.14 * radicus * radicus
    }
    override func simpleDescrition() -> String {
        
        return "A Circle With Sides of Length \(radicus)"
    }
}


//属性可以有getter和setter
class EquilateralTriangle: NameShape {
    
    var sideLength: Double = 0.0
    init(sideLength: Double, name: String) {
        
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    var perimeter: Double {
        
        get {
            
            return 3.0 * sideLength
        } set {
            
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescrition() -> String {
        return "An equilateral triagle with sides of Length\(sideLength)"
    }
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //要创建一个类的实例，在类名后面加上括号。使用点语法来访问实例的属性和方法
        let shape = Shape()
        shape.numberOfSides = 7
        let shapeDescription = shape.simpleDescrition()
        print(shapeDescription)
        
        
        let nameShape = NameShape(name: "Lu")
        
        nameShape.numberOfSides = 10;
        let nameShapeFunc = nameShape.simpleDescrition()
        print(nameShapeFunc)
        
        let test = Square(sideLength: 5.2, name: "Square")
        print("Square area is \(test.area())")
        print(test.simpleDescrition())
        
        let circle = Circle(radicus: 10, name: "dnad")
        circle.numberOfSides = 1
        print("Circle area is \(circle.area())")
        print(circle.simpleDescrition())
     
        
//        let triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
//        triangle.perimeter
//        triangle.perimeter = 9.9
//        triangle.sideLength
        
        let person = Person()
        person.name = "dad"
        person.gender = "man"
//        person.age = 20
        print(person.age)
        
//        print(self)
        
//        let d = Dog()
//        print("\(d.age), \(d.name)")
        
        let d2 = Dog(name: "ahuang", age: 11)
        print("\(d2.age), \(d2.name)")
        
        
        let d3 = Dog(dict: ["name": "3424", "age":
            18])
        print("d3.age===\(d3.age), d3.name===\(d3.name)")

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

