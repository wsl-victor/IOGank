//
//  GKConst.swift
//  IOGank
//
//  Created by victor on 2016/11/2.
//  Copyright © 2016年 wsl. All rights reserved.
//

import UIKit


/// RGBA的颜色设置
func GKColor(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
    return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
}

/// 背景灰色
func GKGlobalColor() -> UIColor {
    return GKColor(r: 240, g: 240, b: 240, a: 1)
}

/// 红色
func GKGlobalRedColor() -> UIColor {
    return GKColor(r: 245, g: 80, b: 83, a: 1.0)
}

//
let ScreenWidth = UIScreen.main.bounds.width
let ScreenHeight = UIScreen.main.bounds.height
