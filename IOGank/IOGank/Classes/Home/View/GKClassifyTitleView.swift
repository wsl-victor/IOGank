//
//  GKClassifyTitleView.swift
//  IOGank
//
//  Created by victor on 2016/11/2.
//  Copyright © 2016年 wsl. All rights reserved.
//

import UIKit


protocol ClassifyTitleViewDelegate: NSObjectProtocol {
    func selectedOptionAtIndex(index: NSInteger)
}


class GKClassifyTitleView: UIView {
    weak var delegate: ClassifyTitleViewDelegate?
    private var iOSBtn:UIButton?
    private var AndroidBtn:UIButton?
    private var WebBtn:UIButton?
    private var AppBtn:UIButton?

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUIFrame()
    }
    
    // MARK: - 视图
    private func setupUI() {
        backgroundColor = UIColor.clear
        iOSBtn = createBtn(titile: "iOS")
        iOSBtn?.addTarget(self, action: #selector(GKClassifyTitleView.iOSBtnAction), for: UIControlEvents.touchUpInside)
        AndroidBtn = createBtn(titile: "Android")
        AndroidBtn?.addTarget(self, action: #selector(GKClassifyTitleView.AndroidBtnAction), for: UIControlEvents.touchUpInside)
        WebBtn = createBtn(titile: "Web")
        WebBtn?.addTarget(self, action: #selector(GKClassifyTitleView.WebBtnAction), for: UIControlEvents.touchUpInside)
        AppBtn = createBtn(titile: "App")
        AppBtn?.addTarget(self, action: #selector(GKClassifyTitleView.AppBtnAction), for: UIControlEvents.touchUpInside)
        
        addSubview(iOSBtn!)
        addSubview(AndroidBtn!)
        addSubview(WebBtn!)
        addSubview(AppBtn!)
        addSubview(line)
    }
    
    private func setupUIFrame() {
       
        iOSBtn?.frame=CGRect(x: 0, y: 0, width: frame.size.width * 0.25, height:  frame.size.height)
        
        AndroidBtn?.frame=CGRect(x: CGRect(x: (iOSBtn?.frame.origin.x)!, y: (iOSBtn?.frame.origin.y)!, width: (iOSBtn?.frame.size.width)!, height: (iOSBtn?.frame.size.height)!).maxX, y: 0, width: frame.size.width * 0.25, height: frame.size.height)
        WebBtn?.frame=CGRect(x: CGRect(x: (AndroidBtn?.frame.origin.x)!, y: (AndroidBtn?.frame.origin.y)!, width: (AndroidBtn?.frame.size.width)!, height: (AndroidBtn?.frame.size.height)!).maxX, y: 0, width: frame.size.width * 0.25, height: frame.size.height)
        AppBtn?.frame=CGRect(x: CGRect(x: (WebBtn?.frame.origin.x)!, y: (WebBtn?.frame.origin.y)!, width: (WebBtn?.frame.size.width)!, height: (WebBtn?.frame.size.height)!).maxX, y: 0, width: frame.size.width * 0.25, height: frame.size.height)
        
        line.frame=CGRect(x: 0, y: frame.size.height - 6.0, width: frame.size.width * 0.25, height: 2.0)
    }
    
    private func createBtn(titile: NSString) -> UIButton {
        let btn = UIButton(type: .custom)
        btn.setTitle(titile as String, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        btn.setTitleColor(UIColor.white, for: .normal)
        return btn
    }
    
    // MARK: - 事件
    @objc private func iOSBtnAction() {
        delegate?.selectedOptionAtIndex(index: 0)
    }
    
    @objc private func AndroidBtnAction() {
        delegate?.selectedOptionAtIndex(index: 1)
    }
    @objc private func WebBtnAction() {
        delegate?.selectedOptionAtIndex(index: 2)
    }
    
    @objc private func AppBtnAction(){
        delegate?.selectedOptionAtIndex(index: 3)
    }
    
    // MARK: - 懒加载
    lazy var line: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()

   open  func scrollLine(scrollViewWidth: CGFloat, offsetX: CGFloat) {
    print(bounds.width)//235     375
        //line.frame.origin.x = lineMargin * 0.25 + offsetX / scrollViewWidth * (bounds.width - line.bounds.width - lineMargin)
        line.frame.origin.x = offsetX / scrollViewWidth*(bounds.width/4)
    }


}
