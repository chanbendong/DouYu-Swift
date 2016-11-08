//
//  CollectionViewPrettyCell.swift
//  DouYuDemo
//
//  Created by 吴孜健 on 2016/10/28.
//  Copyright © 2016年 吴孜健. All rights reserved.
//

import UIKit

class CollectionViewPrettyCell: CollectionBaseCell {

    @IBOutlet weak var cityBtn: UIButton!
    override var anchor: AnchorModel?{
        didSet {
            super.anchor = anchor
            cityBtn.setTitle(anchor?.anchor_city, for: UIControlState())
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
