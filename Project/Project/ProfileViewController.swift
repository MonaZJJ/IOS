//
//  ProfileViewController.swift
//  Project
//
//  Created by gdcp on 2018/4/2.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "登录", style: .plain, target: self, action: #selector(login))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "注册", style: .plain, target: self, action: #selector(register))
    
    }
    func login(){
        print("login")
    }
    func register(){
        print("register")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
