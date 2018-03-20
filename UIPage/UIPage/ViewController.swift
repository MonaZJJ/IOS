//
//  ViewController.swift
//  UIPage
//
//  Created by gdcp on 2018/3/15.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var tip = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black
        let page = UIPageControl()
        page.frame = CGRect(x: 20, y: 100, width: 280, height: 30)
        page.numberOfPages = 4
        page.currentPageIndicatorTintColor = UIColor.red
        page.addTarget(self, action: #selector(changeValue(page:)), for: .valueChanged)
        self.view.addSubview(page)
    }
    func changeValue(page:UIPageControl){
        tip += 1
        print(tip)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

