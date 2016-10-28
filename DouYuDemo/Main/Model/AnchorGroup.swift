//
//  AnchorGroup.swift
//  DouYuDemo
//
//  Created by 吴孜健 on 2016/10/27.
//  Copyright © 2016年 吴孜健. All rights reserved.
//

import UIKit

class AnchorGroup : BaseGameModel {
    var room_list : [[String :NSObject]]? {
        didSet{
            guard let room_list = room_list else {return}
            for dict in room_list{
                anchors.append(AnchorModel(dict: dict))
            }
        }
    }
    
    var icon_name : String = "home_header_normal"

    lazy var anchors : [AnchorModel] = [AnchorModel]()
}
