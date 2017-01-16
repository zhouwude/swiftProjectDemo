//
//  ViewController.swift
//  歌词渐变效果
//
//  Created by 周武德 on 2017/1/4.
//  Copyright © 2017年 医明康德. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy  var masklayer : CALayer = {
        return CALayer.init()
    }()
    @IBOutlet weak var oneLabel: UILabel!
    @IBOutlet weak var topLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        oneLabel.frame = CGRect.init(x: 100, y: 100, width: 170.5, height:50)
        topLabel.frame = oneLabel.frame
        masklayer.bounds = CGRect.init(x: 0, y: 0, width: 170.5, height: topLabel.frame.height)
        masklayer.position  = CGPoint.init(x: -(oneLabel.frame.width/2), y: oneLabel.frame.height/2)
        masklayer.backgroundColor = UIColor.blue.cgColor
        topLabel.layer.mask = masklayer
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var oneClick: UIButton!

    @IBAction func twoClick(_ sender: UIButton) {
      let base = CABasicAnimation.init(keyPath: "position.x")
      base.fromValue = -(oneLabel.frame.width/2)
      base.toValue = oneLabel.frame.width/2
      base.autoreverses = true
      base.repeatCount = HUGE
      base.isRemovedOnCompletion = false
      base.duration = 5
      base.delegate = self
      base.fillMode = kCAFillModeForwards
      masklayer.add(base, forKey: "two")
        
        
        
    }
    @IBAction func oneClick(_ sender: UIButton, forEvent event: UIEvent) {
        let base = CABasicAnimation.init(keyPath: "position.x")
        base.fromValue = -(oneLabel.frame.width/2)
        base.toValue = oneLabel.frame.width/2
        //base.autoreverses = true
        base.repeatCount = HUGE
        base.isRemovedOnCompletion = false
        base.duration = 5
        base.fillMode = kCAFillModeForwards
        masklayer.add(base, forKey: "one")
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController : CAAnimationDelegate{
    func animationDidStart(_ anim: CAAnimation) {
        
        
    }
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        
    }
    
}

