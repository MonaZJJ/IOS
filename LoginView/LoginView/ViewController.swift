//
//  ViewController.swift
//  LoginView
//
//  Created by gdcp on 2018/3/26.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

//屏幕尺寸
let SCREEN_SIZE = UIScreen.main.bounds.size
class ViewController: UIViewController {
    //不用init去初始化
    var loginText : UITextField?
    var pwdText : UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //登录框设置
      loginText = UITextField()
      loginText?.frame = CGRect(x: 20, y: 80, width: SCREEN_SIZE.width-40, height: 30)
      loginText?.borderStyle = .roundedRect
      loginText?.placeholder = "请输入用户名"
      let loginImage = UIImageView(frame:CGRect(x: 0, y: 0, width: 20, height: 20))
      loginImage.image = UIImage(named:"login_user")
      loginText?.leftView = loginImage
      loginText?.leftViewMode = .always
        
      // 密码框设置
        pwdText = UITextField()
        pwdText?.frame = CGRect(x: 20, y: 130, width: SCREEN_SIZE.width-40, height: 30)
        pwdText?.borderStyle = .roundedRect
        pwdText?.placeholder = "请输入密码"
        let pwdImage = UIImageView(frame:CGRect(x: 0, y: 0, width: 20, height: 20))
        pwdImage.image = UIImage(named: "login_pwdico")
        pwdText?.leftView = pwdImage
        pwdText?.leftViewMode = .always
        self.view.addSubview(loginText!)
        self.view.addSubview(pwdText!)
        //创建登录按钮和注册按钮
        let btn = UIButton(type : .system)
        btn.frame = CGRect(x: SCREEN_SIZE.width/4-50, y: 180, width: 100, height: 30)
        btn.setTitle("登录", for: .normal)
        btn.layer.masksToBounds = true
        btn.layer.cornerRadius = 10
        btn.backgroundColor = UIColor.cyan
        btn.addTarget(self, action: #selector(login), for: .touchUpInside)
        
        let btn2 = UIButton(type : .system)
        btn2.frame = CGRect(x: SCREEN_SIZE.width/4*3-50, y: 180, width: 100, height: 30)
        btn2.setTitle("注册", for: .normal)
        btn2.layer.masksToBounds = true
        btn2.layer.cornerRadius = 10
        btn2.backgroundColor = UIColor.cyan
        btn2.addTarget(self, action: #selector(regis), for: .touchUpInside)
        self.view.addSubview(btn)
        self.view.addSubview(btn2)
    }
    //注册的方法
    func regis(){
        //实例化注册页面
        let regisController = RegisController()
        //显示注册控制器
        self.present(regisController,animated: true,completion: nil)
        
    }
    //登录的方法
    func login(){
        //登录名为空
        if loginText!.text!.isEmpty{
            let alertCon = UIAlertController(title: "温馨提示", message: "请输入用户名", preferredStyle: .alert)
            let action = UIAlertAction(title: "好的", style: .default, handler: nil)
            alertCon.addAction(action)
            self.present(alertCon,animated: true,completion: nil)
            return
        }
        //密码为空
        if pwdText!.text!.isEmpty{
            let alertCon = UIAlertController(title: "温馨提示", message: "请输入密码", preferredStyle: .alert)
            let action = UIAlertAction(title: "好的", style: .default, handler: nil)
            alertCon.addAction(action)
            self.present(alertCon,animated: true,completion: nil)
            return
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

