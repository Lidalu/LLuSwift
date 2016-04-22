//
//  ViewController.swift
//  17-UITableview
//
//  Created by ma c on 16/4/22.
//  Copyright © 2016年 lu. All rights reserved.
//

import UIKit
import Foundation

let cellID:String = "cellID"


//Swift中遵守协议直接在和后面通过逗号分隔即可
class ViewController: UIViewController
//    ,UITableViewDelegate, UITableViewDataSource 
{

    override func viewDidLoad() {
        super.viewDidLoad()
        let tv = UITableView()
        tv.frame = UIScreen.mainScreen().bounds
        tv.backgroundColor = UIColor.grayColor()
        tv.dataSource = self
        tv.delegate = self
//        tv.registerClass(UITableViewCell(), forCellReuseIdentifier: cellID)
        view = tv
        
    }
    
    //MARK - UITableViewDataSource
    //一共多少行
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return dataList.count
//    }
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        
//        //1.取出cell
//        var cell = tableView.dequeueReusableCellWithIdentifier(cellID)
//        if cell == nil {
//            
//            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellID)
//        }
//        
//        //2.设置数据源
//        cell?.textLabel?.text = dataList[indexPath.row]
//        
//        //3.返回cell
//        return cell!
//    }
    
    
    // MARK: - 懒加载数据
    //懒加载数据
    lazy var dataList:[String] = {
        
        return ["ljfa", "fa", "zs", "ls", "www"]
    }()
}

//MARK - 苹果官方推荐，可以将数据源代理方法单独写到一个扩展中，以便于提高代码的可读性
//extension相当于OC中的category
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    //MARK - UITableViewDataSource
    //一共多少行
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //1.取出cell
        var cell = tableView.dequeueReusableCellWithIdentifier(cellID)
        if cell == nil {
            
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellID)
        }
        
        //2.设置数据源
        cell?.textLabel?.text = dataList[indexPath.row]
        
        //3.返回cell
        return cell!
    }
}
