//
//  AnchorModel.swift
//  DouYuDemo
//
//  Created by 吴孜健 on 2016/10/27.
//  Copyright © 2016年 吴孜健. All rights reserved.
//

import UIKit

class AnchorModel: NSObject {
    var room_id : Int = 0
    var vertical_src : String = ""
    var isVertical : Int = 0
    var room_name : String = ""
    var nickname : String = ""
    var online : Int = 0
    var  anchor_city : String = ""
    
    init(dict : [String : Any]) {
        super.init()
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forKey key: String) {}

    
}
