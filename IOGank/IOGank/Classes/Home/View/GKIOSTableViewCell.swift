//
//  GKIOSTableViewCell.swift
//  IOGank
//
//  Created by victor on 2016/11/3.
//  Copyright © 2016年 wsl. All rights reserved.
//

import UIKit
import SnapKit
import Kingfisher

class GKIOSTableViewCell: UITableViewCell {
    
    

    var imageIcon : UIImageView!
    var titleLa   : UILabel!
    var authorLa  : UILabel!
    var timeLa    : UILabel!
    
   override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    
        super.init(style: UITableViewCellStyle.default, reuseIdentifier: reuseIdentifier)
        print("=aaaaaa==UITableViewCellStyle===")
        self.imageIcon = UIImageView()
        self.titleLa = UILabel()
        self.authorLa = UILabel()
        self.timeLa = UILabel()
        self.contentView.addSubview(self.imageIcon)
        self.contentView.addSubview(self.titleLa)
        self.contentView.addSubview(self.authorLa)
        self.contentView.addSubview(self.timeLa)
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("==aaaaaa==init(coder:) has not been implemented")
    }
    
    
    //初始化视图
    func setupUI(){
        self.imageIcon.snp.makeConstraints { (make) in
            make.width.equalTo(120)
            make.left.equalTo(self).offset(10)
            make.top.equalTo(self).offset(10)
            make.bottom.equalTo(self).offset(-10)
        }
        self.titleLa.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(10)
            make.left.equalTo(self.imageIcon.snp.right).offset(5)
            make.right.equalTo(self).offset(-10)
            make.height.equalTo(20)
        }
        self.authorLa.snp.makeConstraints { (make) in
            make.top.equalTo(self.titleLa.snp.bottom).offset(5)
            make.left.equalTo(self.imageIcon.snp.right).offset(5)
            make.right.equalTo(self).offset(-10)
            make.height.equalTo(20)
        }
        self.timeLa.snp.makeConstraints { (make) in
            make.top.equalTo(self.authorLa.snp.bottom).offset(5)
            make.left.equalTo(self.imageIcon.snp.right).offset(5)
            make.right.equalTo(self).offset(-10)
            make.height.equalTo(20)
        }
        
    }
    
   
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    }
    
    //类方法，重用标识符
    class func cellID() -> String {
        return "GKIOSTableViewCell"
    }
    
    
    var GKDataModel:GKDataClassModel? {
        
        didSet {
             self.imageIcon.image=UIImage.init(named: "TabBar_category_23x23_")
            let str = GKDataModel?.images?.last
            print(str)
            
           
            if (str==nil) {
                
            }else{
                //self.imageIcon.image=UIImage.init(named: "TabBar_category_23x23_")
//                self.imageIcon.kf.setImage(with: URL.init(string: url!), placeholder: UIImage.init(named: "TabBar_category_23x23_"), options: nil , progressBlock: nil, completionHandler: nil)
                let url = URL(string:str!)
               // self.imageIcon.kf.setImage(with: url)
                self.imageIcon.sd_setImage(with: url)
            }
            
            self.titleLa.text=GKDataModel?.desc
            self.authorLa.text=GKDataModel?.who
            self.timeLa.text=GKDataModel?.createdAt
        }
        
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
