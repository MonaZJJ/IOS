//
//  ViewController.swift
//  UIActivityIndicator
//
//  Created by gdcp on 2018/3/15.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        let indicator = UIActivityIndicatorView(activityIndicatorStyle:.gray)
        indicator.center = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.height/2)
        indicator.color = UIColor.black
        self.view.addSubview(indicator)
        indicator.startAnimating()
        
    }
    public enum UIActivityIndicatorViewStyle:Int{
        case whiteLarge
        case white
        case gray
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

