//
//  GKIOSViewController.swift
//  IOGank
//
//  Created by victor on 2016/11/2.
//  Copyright © 2016年 wsl. All rights reserved.
//

import UIKit

let iosTableViewCellID = "iosTableViewCell"

class GKIOSViewController: GKBaseViewController,UITableViewDelegate,UITableViewDataSource {

     var results = [GKDataClassModel]()
    
    var iosTableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        GKNetworkUtil.shareNetworkUtil.loadClassifyAllData("Android", "10", "1") {(topics) in
            
            self.results=topics
            print("111111")
            print(self.results.count)
            
            
            self.iosTableView.reloadData()
           let  ab  = topics.last! as GKDataClassModel
            
            
            print(topics.count)
             print(ab.createdAt)
             print(ab.desc)
        }
        // Do any additional setup after loading the view.
    }
    
    //初始化界面
    func setupUI ()  {
        iosTableView=UITableView.init(frame: CGRect.init(x: 0, y: 64, width: ScreenWidth, height: ScreenHeight-113), style: .plain)
        iosTableView.delegate=self
        iosTableView.dataSource=self
        iosTableView.rowHeight=100
        self.view.addSubview(iosTableView)
        iosTableView.register(GKIOSTableViewCell.self, forCellReuseIdentifier: iosTableViewCellID)
    }

    
    
    
    
    // MARK: - UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return results.count 
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: iosTableViewCellID) as! GKIOSTableViewCell
        cell.GKDataModel=results[indexPath.row]
        
        return cell
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
