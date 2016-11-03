//
//  GKDataClassModel.swift
//  IOGank
//
//  Created by victor on 2016/11/2.
//  Copyright © 2016年 wsl. All rights reserved.
//

import UIKit

class GKDataClassModel: NSObject {

    var _id: String?
    
    var createdAt: String?
    
    var desc: String?
    
    var publishedAt: String?
    
    var source: String?
    
    var type: String?
    
    var url: String?
    
    var used: Bool?
    
    var who: String?
    
    var images: [String]?
    
    init(dict: [String: AnyObject]) {
        super.init()
        _id = dict["_id"] as? String
        createdAt = dict["createdAt"] as? String
        desc = dict["desc"] as? String
        publishedAt = dict["publishedAt"] as? String
        source = dict["source"] as? String
        
        type = dict["type"] as? String
        url = dict["url"] as? String
        used = dict["used"] as? Bool
        who = dict["who"] as? String
         images = dict["images"] as? [String] ?? []
    }

}
