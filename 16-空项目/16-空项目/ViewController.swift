//
//  ViewController.swift
//  16-空项目
//
//  Created by ma c on 16/4/22.
//  Copyright © 2016年 lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.greenColor()
        
        let btn = UIButton(type: UIButtonType.ContactAdd)
        btn.center = CGPoint(x: 207, y: 278)
        btn.addTarget(self, action: #selector(btnClick), forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(btn)

        
    }

    func btnClick() {
        
        print("fafaf")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

