//
//  GKHomeViewController.swift
//  IOGank
//
//  Created by victor on 2016/11/1.
//  Copyright © 2016年 wsl. All rights reserved.
//

import UIKit

class GKHomeViewController: GKBaseViewController {

  
  

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
       
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupUIFrame()
    }
    
    private func setupUI(){
        automaticallyAdjustsScrollViewInsets = false
        view.backgroundColor = GKGlobalColor()
        navigationItem.titleView = titleView
        view.addSubview(scrollView)
        scrollView.addSubview(iOSVC.view)
        scrollView.addSubview(AndroidVC.view)
        scrollView.addSubview(WebVC.view)
        scrollView.addSubview(AppVC.view)
        

    }


    private func setupUIFrame() {
        
        self.titleView.frame =  CGRect.init(x: 70, y: 0, width:ScreenWidth-140, height: 44.0)
        
        self.scrollView.frame=CGRect.init(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-44)
        self.scrollView.contentSize=CGSize.init(width: self.scrollView.bounds.width * 4.0, height: self.scrollView.bounds.height)
        self.iOSVC.view.frame=self.scrollView.bounds
        self.AndroidVC.view.frame=CGRect(x: self.scrollView.width, y: 0, width: self.scrollView.bounds.width, height: self.scrollView.bounds.height)
        self.WebVC.view.frame=CGRect(x:  self.scrollView.width*2, y: 0, width: self.scrollView.bounds.width, height: self.scrollView.bounds.height)
        
        self.AppVC.view.frame=CGRect(x:self.scrollView.width*3, y: 0, width: self.scrollView.bounds.width, height: self.scrollView.bounds.height)
        


    }
    
    // MARK: - 懒加载
    lazy var titleView: GKClassifyTitleView = {
        let view = GKClassifyTitleView()
        view.delegate = self
        return view
    }()
    
   private  lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.delegate = self
        view.showsHorizontalScrollIndicator = false
        view.isPagingEnabled = true
        return view
    }()
    
    
    private lazy var iOSVC: GKIOSViewController = GKIOSViewController()
    private lazy var AndroidVC: GKAndroidViewController = GKAndroidViewController()
    private lazy var WebVC: GKWebViewController = GKWebViewController()
    private lazy var AppVC: GKAndroidViewController = GKAndroidViewController()
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


//MARK: -代理
extension GKHomeViewController : ClassifyTitleViewDelegate,UIScrollViewDelegate {
    func selectedOptionAtIndex(index: NSInteger) {
        //scrollView.setContentOffset(CGPointMake(CGFloat(index) * scrollView.bounds.width, 0), animated: true)
    }
    
    // MARK: - UISearchBarDelegate
//    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
//        navigationController?.pushViewController(SearchViewController(), animated: true)
//    }
    
    // MARK: - UIScrollViewDelegate
   
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        /// 更改选礼神器按钮alpha
        //navigationItem.rightBarButtonItem?.customView?.alpha = scrollView.contentOffset.x / scrollView.bounds.width
        /// 更改titleView底部线条
        
        titleView.scrollLine(scrollViewWidth: scrollView.bounds.width, offsetX:scrollView.contentOffset.x)
    }
    



    // Dispose of any resources that can be recreated.
}


