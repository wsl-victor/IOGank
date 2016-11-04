//
//  GKDetailViewController.swift
//  IOGank
//
//  Created by victor on 2016/11/4.
//  Copyright © 2016年 wsl. All rights reserved.
//

import UIKit
import WebKit


class GKDetailViewController: UIViewController , WKNavigationDelegate,WKUIDelegate{
    
    var webView : WKWebView!
    var dataModel : GKDataClassModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        self.webView=WKWebView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
        self.webView.navigationDelegate=self
        self.webView.uiDelegate=self
        self.view.addSubview(self.webView)
        self.webView.load(URLRequest.init(url: URL(string: (dataModel?.url!)!)!))
        // Do any additional setup after loading the view.
    }
    
    func renderButtons()  {
        let topView : UIView = UIView.init(frame: CGRect.init(x: 0, y: 64, width: ScreenWidth, height: 44))
        topView.backgroundColor=UIColor.red
        
        self.view.insertSubview(topView, aboveSubview: self.webView)
        
    }
    

    // MARK: -KNavigationDelegate,WKUIDelegate
    //加载开始
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        
    }
    //加载错误
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        
    }
    
    //加载完成
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
    }
    //当页面加载开始返回时调用
    func webView(_ webView: WKWebView, commitPreviewingViewController previewingViewController: UIViewController) {
        
    }
    
    
    //-=====
    // 接收到服务器跳转请求之后调用
    func webView(_ webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!) {
        
    }
    // 在收到响应后，决定是否跳转
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        
    }
    // 在发送请求之前，决定是否跳转
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
      
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
