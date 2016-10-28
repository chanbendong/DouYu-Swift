//
//  BaseViewModel.swift
//  DouYuDemo
//
//  Created by 吴孜健 on 2016/10/27.
//  Copyright © 2016年 吴孜健. All rights reserved.
//

import UIKit

class BaseViewModel {
    lazy var anchorGroups : [AnchorGroup] = [AnchorGroup]()
}

extension BaseViewModel{
    //请求推荐、娱乐模块主播数据
    func loadAnchorData(method : MethodType, URLString : String, Paramters : [String : Any]? = nil, finishedCallback : @escaping () -> ()) {
        NetworkTools.requestData(method, URLString: URLString, paramters: Paramters) { (result) in
            guard let resultDict = result as? [String : Any] else{return}
            guard let dataArr = resultDict["data"] as? [[String : Any]] else{ return }
            for dict in dataArr{
                let amuse = AnchorGroup(dic: dict)
                self.anchorGroups.append(amuse)
            }
            finishedCallback()
        }
    }
    func loadFunnyData(method : MethodType, URLString : String, parameters : [String : Any]? = nil, finishedCallback : @escaping () -> ()){
        NetworkTools.requestData(method, URLString: URLString, paramters: parameters) { (result) in
            guard let resultDict = result as? [String : Any] else{return}
            guard let dataArr = resultDict["data"] as? [[String : Any]] else{ return }
            
            let anchorGroup = AnchorGroup()
            for dict in dataArr {
                let anchor = AnchorModel(dict: dict)
                anchorGroup.anchors.append(anchor)
            }
            self.anchorGroups.append(anchorGroup)
            finishedCallback()
        }
    }
}
