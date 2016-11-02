//
//  GKIOSViewController.swift
//  IOGank
//
//  Created by victor on 2016/11/2.
//  Copyright © 2016年 wsl. All rights reserved.
//

import UIKit

class GKIOSViewController: GKBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        GKNetworkUtil.shareNetworkUtil.loadClassifyAllData("Android", "10", "1") {(topics) in
            
           let  ab  = topics.last! as GKDataClassModel
            
            
            print(topics.count)
             print(ab.createdAt)
             print(ab.desc)
        }
        // Do any additional setup after loading the view.
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
