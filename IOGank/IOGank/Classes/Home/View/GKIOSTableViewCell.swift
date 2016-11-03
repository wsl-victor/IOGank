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
    
    var GKDataModel:GKDataClassModel? {
        
        didSet {
            let url = GKDataModel?.images?.last
            print(url)
            if (url==nil) {
                
            }else{
                imageIcon.kf.setImage(with: URL(string: (url)!) as? Resource, placeholder: UIImage.init(named: "TabBar_category_23x23_"), options: nil, progressBlock: nil, completionHandler: nil)
            }
            
            titleLa.text=GKDataModel?.desc
            authorLa.text=GKDataModel?.who
            timeLa.text=GKDataModel?.createdAt
        }
        
    }
    
    

    var imageIcon : UIImageView!
    var titleLa   : UILabel!
    var authorLa  : UILabel!
    var timeLa    : UILabel!
    
   override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
            imageIcon = UIImageView()
            titleLa = UILabel()
            authorLa = UILabel()
            timeLa = UILabel()
            contentView.addSubview(imageIcon)
            contentView.addSubview(titleLa)
            contentView.addSubview(authorLa)
            contentView.addSubview(timeLa)
    }
    
    func setupUI(){
        imageIcon.snp.makeConstraints { (make) in
            make.width.equalTo(120)
            make.left.equalTo(self).offset(10)
            make.top.equalTo(self).offset(10)
            make.bottom.equalTo(self).offset(-10)
        }
        titleLa.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(10)
            make.left.equalTo(imageIcon.snp.right).offset(5)
            make.right.equalTo(self).offset(-10)
            make.height.equalTo(20)
        }
        authorLa.snp.makeConstraints { (make) in
            make.top.equalTo(titleLa.snp.bottom).offset(5)
            make.left.equalTo(imageIcon.snp.right).offset(5)
            make.right.equalTo(self).offset(-10)
            make.height.equalTo(20)
        }
        timeLa.snp.makeConstraints { (make) in
            make.top.equalTo(authorLa.snp.bottom).offset(5)
            make.left.equalTo(imageIcon.snp.right).offset(5)
            make.right.equalTo(self).offset(-10)
            make.height.equalTo(20)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    }
    
  
    
    
    
    

    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
