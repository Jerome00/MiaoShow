//
//  JJMainViewController.swift
//  MiaoShow
//
//  Created by JJ on 2017/3/4.
//  Copyright © 2017年 JJ. All rights reserved.
//

import UIKit

class JJMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        
    }

    private func setUI(){
        let home = JJHomeViewController()
        let profile = JJProfileViewController()
        let live = UIViewController()
        addChildViewController(childController: home, imageName: "toolbar_home")
        addChildViewController(childController: live, imageName: "toolbar_live")
        addChildViewController(childController: profile, imageName: "toolbar_me")
    }
  
    private func addChildViewController(childController: UIViewController,imageName:String) {
        let nav = JJMainNavController(rootViewController: childController)
        childController.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        childController.tabBarItem.selectedImage = UIImage(named: "\(imageName)_sel")?.withRenderingMode(.alwaysOriginal)
        childController.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
        addChildViewController(nav)
    }
}
