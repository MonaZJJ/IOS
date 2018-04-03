//
//  MainViewController.swift
//  Project
//
//  Created by gdcp on 2018/4/2.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class MainViewController:UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor.orange
        addChildViewController(vc: UIViewController(), title: "首页", imageName:"tabbar_home")
        addChildViewController(vc: UIViewController(), title: "消息", imageName:"tabbar_message_center")
        addChildViewController(vc: UIViewController(), title: "发现", imageName:"tabbar_discover")
        addChildViewController(vc: ProfileViewController(), title: "我", imageName:"tabbar_profile")
            }
    func addChildViewController(vc:UIViewController,title:String,imageName:String)
    {
        vc.navigationItem.title = title
        vc.tabBarItem.title = title
        vc.title = title
        vc.tabBarItem.image = UIImage(named: imageName)
        vc.tabBarItem.selectedImage = UIImage(named: "\(imageName)_highlighted")
        let nav = UINavigationController(rootViewController: vc)
        self.addChildViewController(nav)
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
