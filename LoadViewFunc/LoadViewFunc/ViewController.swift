//
//  ViewController.swift
//  LoadViewFunc
//
//  Created by 周武德 on 2017/3/9.
//  Copyright © 2017年 医明康德. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = UIColor.red
        print("viewDidLoad")
        // Do any additional setup after loading the view, typically from a nib.
    }
  //loadView重载
    //这里会创建控制器所需要的view 调用super的方法去完成这个方法.....
    
    override func loadView() {
//        super.loadView()
        let view1 = UIView.init()
        view1.backgroundColor = UIColor.yellow
        view = view1
        //如果这里没有加载到view则 viewdidload 会不停的调用  loadView方法去加载view造成死循环...
        print("loadView")
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

