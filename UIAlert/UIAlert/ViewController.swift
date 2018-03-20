//
//  ViewController.swift
//  UIAlert
//
//  Created by gdcp on 2018/3/20.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    //👋触摸了屏幕后触发的事件
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //创建警告控制器实例

       let alert = UIAlertController(title:"标题",message:"警告的内容",preferredStyle:.alert)
        //添加按钮  UIAlertAction封装了触发方法的选项按钮
       let action = UIAlertAction(title: "按钮", style: .default) { (UIAlertAction) in
        print("click")
        }
        //注意点：handler参数是函数类型，表示单击按钮后要执行的方法
        let action2 = UIAlertAction(title: "取消", style: .cancel) { (UIAlertAction) in
            print("cancle")
        }
        let action3 = UIAlertAction(title: "注意", style: .destructive) { (UIAlertAction) in
            print("careful")
        }
        //将按钮添加到警告控制器中
        alert.addAction(action)
        alert.addAction(action2)
        alert.addAction(action3)
        alert.addTextField { (textField) in
            textField.placeholder = "请输入姓名"
        }
        //显示控制器
        //self.view.addSubview(UIView)
        //以模式框方式显示视图控制器实例
        self.present(alert,animated: true,completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

