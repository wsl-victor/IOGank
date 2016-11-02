//
//  GKNetworkUtil.swift
//  IOGank
//
//  Created by victor on 2016/11/2.
//  Copyright © 2016年 wsl. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


typealias sendVlesClosure = (AnyObject?, NSError?)->Void

class GKNetworkUtil: NSObject {

    static let shareNetworkUtil = GKNetworkUtil()
    
    
    //加载首页分类数据 http://gank.io/api/data/Android/10/1
    func loadClassifyAllData(_ category:String,_ pageSize:String,_ pageNo:String,finished: @escaping (_ classDatas:[GKDataClassModel])->() ){
        let url="http://gank.io/api/data"
        let urlString = url+"/"+category+"/"+pageSize+"/"+pageNo
        print(urlString)
        
       Alamofire
            .request(urlString, method: .get, parameters: nil, encoding:URLEncoding.default, headers: nil)
            .responseJSON { (response) in
                print(response)
                    guard response.result.isSuccess else {
            
                            return
                    }
                if let value = response.result.value {
                    let json = JSON(value)
                    if let dataArr = json["results"].arrayObject {
                        var topics = [GKDataClassModel]()
                        for dict in dataArr {
                            let data = GKDataClassModel(dict:dict as! [String: AnyObject])
                            topics.append(data)
                        }
                        finished(topics)
                    }
                }
        }
    
    }
    
}
