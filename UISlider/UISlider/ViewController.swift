//
//  ViewController.swift
//  UISlider
//
//  Created by gdcp on 2018/3/15.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let slider = UISlider()
        slider.frame = CGRect(x: 20, y: 100, width: 280, height: 30)
        slider.isContinuous = true
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.minimumTrackTintColor = UIColor.red
        slider.maximumTrackTintColor = UIColor.green
        slider.thumbTintColor = UIColor.blue
        slider.addTarget(self, action: #selector(changeValue(slider:)), for: .valueChanged)
        self.view.addSubview(slider)
    }
    func changeValue(slider:UISlider){
        print(slider.value)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

