//
//  ViewController.swift
//  11-闭包的基本概念
//
//  Created by ma c on 16/4/20.
//  Copyright © 2016年 lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         闭包和OC中的block非常相似
        OC中的block类似于匿名函数
         闭包是用来定义函数
         作用：block适用于保存一段代码，在需要的时候执行
              闭包也是用于保存一段代码，在需要的时候执行
         做一个耗时操作
 
        */
        
        /*
         闭包的基本格式：
         in的含义是用于区分形参返回值和执行代码
         {  
            (形参列表) -> ()
            in
            需要执行的代码
         }
         
         
 
        */
//        [self loadData];
        
        /*
 
         闭包的几种格式：
         1.将闭包通过实参传递给函数
         2.如果闭包是函数的最后一个参数那么闭包可以写在函数（）的后面
         3.如果函数只接受一个参数，并且这个参数是闭包，那么（）可以省略
 */
        loadData2(10) { 
            
            print("num");
        }
        
        loadData { 
            
            print("我被回调了")
        }
        
        /*
         闭包的简写:如果闭包没有参数也没有返回值，那么in之前的东西都可以删除，包括in
         
         */
    }
    

    
    func loadData2(num: Int, finished: ()->()) -> Void {
        
        print("执行耗时操作2")
        //回调通知者
        finished()
    }
    
    func loadData(finished: ()->()) -> Void {
        
        print("执行耗时操作")
        //回调通知者
        finished()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        dispatch_async(dispatch_get_global_queue(0, 0)) { 
            
            print(NSThread.currentThread())
            print("执行耗时操作")
            
            dispatch_async(dispatch_get_main_queue(), { 
                print(NSThread.currentThread())
                print("回到主线程，更新UI")
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

