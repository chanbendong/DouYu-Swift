//
//  CollectionBaseCell.swift
//  DouYuDemo
//
//  Created by 吴孜健 on 2016/10/28.
//  Copyright © 2016年 吴孜健. All rights reserved.
//

import UIKit
import Kingfisher

class CollectionBaseCell: UICollectionViewCell {
    @IBOutlet weak var iconImgaeView : UIImageView!
    @IBOutlet weak var nickNameLabel : UILabel!
    @IBOutlet weak var onlineBtn : UIButton!
    
    var anchor : AnchorModel?{
        didSet{
            guard let anchor = anchor else { return }
            var onlineStr : String = ""
            if anchor.online >= 10000 {
                onlineStr = "\(Int(anchor.online/1000))万人在线"
            }else{
                onlineStr = "\(anchor.online)人在线"
            }
            onlineBtn.setTitle(onlineStr, for: UIControlState())
            nickNameLabel.text = anchor.nickname
            guard let icon_URL = URL(string: anchor.vertical_src) else {
                return
            }
            iconImgaeView.kf.setImage(with: icon_URL)
            
        }
    }
    
}
