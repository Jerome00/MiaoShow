//
//  JJMainNavController.swift
//  MiaoShow
//
//  Created by JJ on 2017/3/4.
//  Copyright © 2017年 JJ. All rights reserved.
//

import UIKit

class JJMainNavController: JJBaseNavController {
    
    override class func initialize() {
        let bar = UINavigationBar.appearance()
        let img = UIImage(named: "navBar_bg_414x70")
        bar.setBackgroundImage(img, for: .default)
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

}
