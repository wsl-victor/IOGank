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
         tabBar.tintColor = UIColor(red: 245 / 255, green: 80 / 255, blue: 83 / 255, alpha: 1.0)
        createNavView()
        
    }
    
    //添加所有控制器
    private func createNavView(){
        let  homeVc = GKHomeViewController()
        let  homeItem = UITabBarItem.init(title: "干货", image: UIImage.init(named: "TabBar_home_23x23_"), selectedImage: UIImage.init(named: "TabBar_home_23x23_selected"))
        homeVc.tabBarItem=homeItem
        let navHome=GKNavigationController()
        navHome.addChildViewController(homeVc)
        

        
        let  historyVc = GKHistoryViewController()
        let  historyItem = UITabBarItem.init(title: "小憩", image: UIImage.init(named: "TabBar_gift_23x23_"), selectedImage: UIImage.init(named: "TabBar_gift_23x23_selected"))
        historyVc.tabBarItem=historyItem
        let navHistory=GKNavigationController()
        navHistory.addChildViewController(historyVc)

        
        
        let  meVc = GKMeViewController()
        let  meItem = UITabBarItem.init(title: "更多", image: UIImage.init(named: "TabBar_me_boy_23x23_"), selectedImage: UIImage.init(named: "TabBar_me_boy_23x23_selected"))
        meVc.tabBarItem=meItem
        let navMe=GKNavigationController()
        navMe.addChildViewController(meVc)
    
        addChildViewController(navHome)
        addChildViewController(navHistory)
        addChildViewController(navMe)
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
