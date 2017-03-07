//
//  JJLoginViewController.swift
//  MiaoShow
//
//  Created by JJ on 2017/3/4.
//  Copyright © 2017年 JJ. All rights reserved.
//

import UIKit
import AVFoundation
import IJKMediaFramework
import SnapKit
import SVProgressHUD

class JJLoginViewController: UIViewController {

    var Player :IJKFFMoviePlayerController = {
        let path = (arc4random_uniform(10) % 2) == 1 ?"login_video" : "loginmovie"
        let urlStr = Bundle.main.path(forResource: path, ofType: "mp4")
        let player = IJKFFMoviePlayerController(contentURLString: urlStr, with: IJKFFOptions.byDefault())!
        return player
    }()
    
    var loginBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        NotificationCenter.default.addObserver(self, selector: #selector(remove), name: NSNotification.Name.IJKMPMoviePlayerPlaybackDidFinish, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(didChan), name: NSNotification.Name.IJKMPMoviePlayerLoadStateDidChange, object: nil)
        
       //设置界面
       setUI()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    private func setUI(){
        Player.view.frame = view.bounds
        Player.scalingMode = IJKMPMovieScalingMode.aspectFill
        view.addSubview(Player.view)
        Player.shouldAutoplay = false
        Player.prepareToPlay()
        
        loginBtn.setTitle("快速登录", for: .normal)
        loginBtn.layer.borderWidth = 1
        loginBtn.layer.borderColor = UIColor.yellow.cgColor
        loginBtn.setTitleColor(UIColor.yellow, for: .normal)
        view.addSubview(loginBtn)
        loginBtn.addTarget(self, action: #selector(loginSuccess), for: .touchUpInside)
        loginBtn.snp.makeConstraints { (make) in
            make.left.equalTo(view).offset(20)
            make.right.equalTo(view).offset(-20)
            make.bottom.equalTo(view).offset(-40)
            make.height.equalTo(40)
        }
        
    }
    
    @objc private func loginSuccess(){
        SVProgressHUD.showSuccess(withStatus: "登陆成功")
        let main = JJMainViewController()
        present(main, animated: true, completion: nil)
    }

    @objc private func remove(){
        Player.play()
    }
    
    @objc private func didChan(){
        Player.play()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        Player.shutdown()
        Player.view.removeFromSuperview()
    }

}
