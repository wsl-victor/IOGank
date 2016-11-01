//
//  GKTabBarController.swift
//  IOGank
//
//  Created by victor on 2016/11/1.
//  Copyright © 2016年 wsl. All rights reserved.
//

import UIKit

class GKTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createNavView()
        
    }
    
    //添加所有控制器
    private func createNavView(){
        let  homeVc = UIStoryboard.init(name: "Home", bundle: Bundle.main).instantiateInitialViewController()
        let  homeItem = UITabBarItem.init(tabBarSystemItem: .favorites, tag: 0)
        homeVc?.tabBarItem=homeItem
        homeVc?.title="干货"
        
        let  historyVc = UIStoryboard.init(name: "History", bundle: Bundle.main).instantiateInitialViewController()
        let  historyItem = UITabBarItem.init(tabBarSystemItem: .history, tag: 0)
        historyVc?.tabBarItem=historyItem
        historyVc?.title="收藏"
        
        
        let  meVc = UIStoryboard.init(name: "Me", bundle: Bundle.main).instantiateInitialViewController()
        let  meItem = UITabBarItem.init(tabBarSystemItem: .mostRecent, tag: 0)
        meVc?.tabBarItem=meItem
        meVc?.title="我"
        
        addChildViewController(homeVc!)
        addChildViewController(historyVc!)
        addChildViewController(meVc!)
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
