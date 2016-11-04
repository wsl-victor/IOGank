//
//  GKDetailViewController.swift
//  IOGank
//
//  Created by victor on 2016/11/4.
//  Copyright © 2016年 wsl. All rights reserved.
//

import UIKit

class GKDetailViewController: UIViewController {
    
    var webView : UIWebView!
    var dataModel : GKDataClassModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        self.webView=UIWebView.init(frame: CGRect.init(x: 0, y: 64, width: ScreenWidth, height: ScreenHeight-64))
        self.view.addSubview(self.webView)
        
        self.webView.loadRequest(URLRequest.init(url: URL(string: (dataModel?.url!)!)!))
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
