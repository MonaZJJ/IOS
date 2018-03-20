//
//  ViewController.swift
//  UIStepper
//
//  Created by gdcp on 2018/3/15.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let stepper = UIStepper()
        stepper.center = CGPoint(x: 200, y: 100)
        stepper.isContinuous = true
        stepper.autorepeat = true
        stepper.wraps = true
        stepper.minimumValue = 1
        stepper.maximumValue = 10
        stepper.stepValue = 1
        stepper.tintColor = UIColor.red
        self.view.addSubview(stepper)
        stepper.addTarget(self, action: #selector(click(stepper:)), for: .valueChanged)
    }
    func click(stepper:UIStepper){
        print(stepper.value)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

