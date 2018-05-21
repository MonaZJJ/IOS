//
//  ViewController.swift
//  CAAnimation
//
//  Created by gdcp on 2018/5/21.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var layer : CALayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        layer = CALayer()
        layer?.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        layer?.position = CGPoint(x: 100, y: 100)
        layer?.backgroundColor = UIColor.red.cgColor
        self.view.layer.addSublayer(layer!)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let anim = CABasicAnimation(keyPath: "backgroundColor")
        anim.fromValue = UIColor.brown.cgColor
        anim.toValue = UIColor.cyan.cgColor
        anim.duration = 3
        layer?.add(anim,forKey: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

