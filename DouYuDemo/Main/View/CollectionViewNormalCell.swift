//
//  CollectionViewNormalCell.swift
//  DouYuDemo
//
//  Created by 吴孜健 on 2016/10/28.
//  Copyright © 2016年 吴孜健. All rights reserved.
//

import UIKit

class CollectionViewNormalCell: CollectionBaseCell {
    
    @IBOutlet weak var roomNameLabel: UILabel!

    override var anchor: AnchorModel?{
        didSet {
            super.anchor = anchor
            roomNameLabel.text = anchor?.room_name
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
