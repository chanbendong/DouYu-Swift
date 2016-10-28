//
//  BaseGameModel.swift
//  DouYuDemo
//
//  Created by 吴孜健 on 2016/10/27.
//  Copyright © 2016年 吴孜健. All rights reserved.
//

import UIKit

class BaseGameModel: NSObject {
    var tag_name : String = ""
    var icon_url : String = ""
    
    override init(){
        super.init()
    }
    
    init(dic : [String : Any]) {
        super.init()
        setValuesForKeys(dic)
    }
    
    override func setValue(_ value: Any?, forKey key: String) {
    }
    
}
