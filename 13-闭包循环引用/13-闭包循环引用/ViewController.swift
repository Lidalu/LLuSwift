//
//  ViewController.swift
//  13-闭包循环引用
//
//  Created by ma c on 16/4/20.
//  Copyright © 2016年 lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //在swift中，如果在某个类中定义一个属性，那么这个属性必须要初始化，否则就会报错
//    如果暂时不想初始化，那么可以在后面写上一个？号
    
    //注意：这个是错误的写法，当前写法代表闭包的返回值可以是nil
//    var finished: ()->()?
    
    
    var finished: (()->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        __weak typeof(self) weakSelf = self
        weak var weakSelf = self
        loadData {
            
            print("回到主线程更新UI")
            //在swift开发中，能不写self就不写self，但是在闭包中必须写上self
            //所以以后看到self基本上都和闭包有关系
            weakSelf!.view.backgroundColor = UIColor.redColor()
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    func loadData(finished: ()->()) -> Void {
        
        print("执行耗时操作")
        self.finished = finished
        finished()
    }

    //析构函数，相当于OC中的dealloc
    deinit {
        
        print("滚")
    }
}

