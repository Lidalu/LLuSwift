//
//  ViewController.swift
//  12-闭包的返回值和参数
//
//  Created by ma c on 16/4/20.
//  Copyright © 2016年 lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        createScrollView { () -> Int in
//            return 10
//        }
      /*  //1.创建UIScollView
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 100, width: 414, height: 44))
        scrollView.backgroundColor = UIColor.redColor()
        
        //2.创建N多UIButton
        
        let width = 80
        
        for i in 0..<15 {
            
            let btn = UIButton()
            //3.设置UIButton的属性

            btn.backgroundColor = UIColor.greenColor()
            btn.setTitle("标题\(i)", forState: UIControlState.Normal)
            btn.frame = CGRect(x: i * width, y: 0, width: width, height: 44)
            //4.将UIButton添加到UIScollView
            scrollView.addSubview(btn)
        }
        scrollView.contentSize = CGSize(width: 15 * width, height: 44)

        
        
        //5.将UIScollView添加到控制器上
        //特点：没有些self
        //Swift推荐：能不写self就不写self
        view.addSubview(scrollView)*/
        
//        let sc = createScrollView { () -> Int in
//            return 12
//        }
        
        let sc = createScrollView({ () -> Int in
            
            return 12
            
            }) { (index) -> UIButton in
                
                let width = 80
                let btn = UIButton()
                btn.backgroundColor = UIColor.greenColor()
                btn.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)
                
                btn.setTitle("标题\(index)", forState: UIControlState.Normal)
                btn.frame = CGRect(x: index * width, y: 0, width: width, height: 44)
                return btn
        }
        
        view.addSubview(sc)
        
        
    }
    
    //要求：定义一个方法来创建UIScollView，并且UIScollView上有多少个按钮必须通过闭包告诉该方法

    func createScrollView(btnCount: ()->Int, btnWithIndex: (index:Int)->UIButton) -> UIScrollView {
        
        //1.创建UIScollView
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 100, width: 414, height: 44))
        scrollView.backgroundColor = UIColor.redColor()
        
        //2.创建N多UIButton
        
        for i in 0..<btnCount() {
            
//            let btn = UIButton()
//            //3.设置UIButton的属性
//            
//            btn.backgroundColor = UIColor.greenColor()
//            btn.setTitle("标题\(i)", forState: UIControlState.Normal)
//            btn.frame = CGRect(x: i * width, y: 0, width: width, height: 44)
            //4.将UIButton添加到UIScollView
            let btn = btnWithIndex(index: i)
            
            scrollView.addSubview(btn)
            scrollView.contentSize = CGSize(width: CGFloat(btnCount()) * btn.bounds.width, height: 44)

        }
        
        
        
        //5.将UIScollView添加到控制器上
        //特点：没有些self
        //Swift推荐：能不写self就不写self
//        view.addSubview(scrollView)
        return scrollView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

