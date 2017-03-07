//
//  JJWebViewController.swift
//  MiaoShow
//
//  Created by JJ on 2017/3/5.
//  Copyright © 2017年 JJ. All rights reserved.
//

import UIKit

class JJWebViewController: JJBaseViewController {
    
    var url:String?
    var webView:UIWebView = UIWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.backgroundColor = UIColor.yellow
        webView.frame = view.bounds
        let mUrl = URL(string: url!)
        let request = URLRequest(url: mUrl!)
        webView.loadRequest(request)
        view.addSubview(webView)
    }

}
