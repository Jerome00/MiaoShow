//
//  JJHomeViewController.swift
//  MiaoShow
//
//  Created by JJ on 2017/3/5.
//  Copyright © 2017年 JJ. All rights reserved.
//

import UIKit

class JJHomeViewController: JJBaseViewController {
    
    private lazy var MianScrollView = UIScrollView(frame: UIScreen.main.bounds)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        
    }
    
    private func setUI(){
        MianScrollView.contentSize = CGSize(width: SCREEN_WIDTH * 3, height: 0)
        MianScrollView.backgroundColor = UIColor.white
        MianScrollView.showsVerticalScrollIndicator = false
        MianScrollView.showsHorizontalScrollIndicator = false
        MianScrollView.isPagingEnabled = true
        MianScrollView.bounces = false
        view.addSubview(MianScrollView)
        
        let height = SCREEN_HEIGHT - 49
        
        let hot = JJHotViewController()
        hot.view.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: height)
        addChildViewController(hot)
        MianScrollView.addSubview(hot.view)
        
        let new = JJNewViewController()
        new.view.frame = CGRect(x:SCREEN_WIDTH, y: 0, width: SCREEN_WIDTH, height: height)
        addChildViewController(new)
        MianScrollView.addSubview(new.view)
        
        let care = JJCareViewController()
        care.view.frame = CGRect(x: 2*SCREEN_WIDTH, y: 0, width: SCREEN_WIDTH, height: height)
        addChildViewController(care)
        MianScrollView.addSubview(care.view)
  
        navigationItem.leftBarButtonItem = UIBarButtonItem(image:UIImage(named: "search_15x14")?.withRenderingMode(.alwaysOriginal), style: .done, target: self, action: #selector(search))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image:UIImage(named: "head_crown_24x24")?.withRenderingMode(.alwaysOriginal) , style: .done, target: self, action: #selector(rankCrown))
    }
  
    @objc private func search(){
        
    }
    
    @objc private func rankCrown(){
        let rank = JJWebViewController()
        rank.url = "http://www.baidu.com"
        navigationController?.pushViewController(rank, animated: true)
    }
    
}
