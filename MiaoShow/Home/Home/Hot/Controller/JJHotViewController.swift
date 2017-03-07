//
//  JJHotViewController.swift
//  MiaoShow
//
//  Created by JJ on 2017/3/5.
//  Copyright © 2017年 JJ. All rights reserved.
//

import UIKit
import Alamofire

let cellID = "HotCellID"

class JJHotViewController: JJBaseViewController{
    
   private lazy var mTableView = UITableView(frame: UIScreen.main.bounds, style: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mTableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier:cellID )
        mTableView.delegate = self
        mTableView.dataSource = self
        view.addSubview(mTableView)
        
        getHotList()
    }
    
    private func getHotList(){
       
    }
}

extension JJHotViewController:UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = "live"
        return cell
    }
    
}
