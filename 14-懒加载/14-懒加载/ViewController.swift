//
//  ViewController.swift
//  14-懒加载
//
//  Created by ma c on 16/4/20.
//  Copyright © 2016年 lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //格式:定义变量时前面使用lazy来修饰变量，后面通过等到赋值一个闭包
    //注意点：1.必须是var， 2.闭包后面必须跟上（）
    lazy var dataList:[String] = {
        
        ()->[String]
        in
        print("我被搞了")
        return ["hh", "faf", "daw"]
    }()
    
    lazy var dataList2:[String] = {
        
        print("第二次被搞")
        return ["damd", "nfa", "ewr"]
    }()
    
    let demoFunc = {
        
        ()->[String]
        in
        print("第三次被搞")
        return ["123", "456", "789"]
    }
    lazy var dataList3:[String] = self.demoFunc()
    
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        print(dataList)
        print(dataList)
        print(dataList3)
//        print(demoFunc())
    }

}

