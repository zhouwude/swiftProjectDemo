//
//  ViewController.swift
//  odd-even-CAShaperLayer
//
//  Created by 周武德 on 2017/1/4.
//  Copyright © 2017年 医明康德. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        fun1()
       // fun1("ss")
        // Do any additional setup after loading the view, typically from a nib.
    }
    //做镂空的图层
    func fun1()  {
        view.backgroundColor = UIColor.white
        let shaperLayer = CAShapeLayer.init()
        shaperLayer.fillColor = UIColor.black.withAlphaComponent(0.5).cgColor
        let path1 = CGMutablePath.init()
        path1.addRect(view.bounds)
        let path2 = CGMutablePath.init()
        path2.addRect(CGRect.init(x: 100, y: 100, width: 100, height: 100))
        path1.addPath(path2)
        shaperLayer.path = path1
        
        shaperLayer.fillRule = kCAFillRuleEvenOdd
        view.layer.addSublayer(shaperLayer)
    }
    func fun1(_ test : String)  {
        let layer = CAShapeLayer.init()
        let path = CGMutablePath.init()
        view.backgroundColor = UIColor.white
        //跟layer的颜色无关 实心部分才能显示出来 如果透明则 原图层也会被 影藏。
        path.addEllipse(in: CGRect.init(x: 100, y: 100, width: 100, height: 200))
        layer.lineWidth = 5
        layer.strokeColor = UIColor.blue.cgColor
        layer.fillColor = UIColor.clear.cgColor
        layer.path = path
        view.layer.mask = layer
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

