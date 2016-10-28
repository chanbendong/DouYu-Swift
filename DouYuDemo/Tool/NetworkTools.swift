
//
//  NetworkTools.swift
//  DouYuDemo
//
//  Created by 吴孜健 on 2016/10/28.
//  Copyright © 2016年 吴孜健. All rights reserved.
//

import UIKit
import Alamofire

enum MethodType{
    case get
    case post
}

class NetworkTools {
    class func requestData(_ type : MethodType, URLString : String, paramters : [String : Any]? = nil, finishCallback : @escaping (_ result : Any) -> ()) {
        let method = type == .get ? HTTPMethod.get : HTTPMethod.post
        Alamofire.request(URLString, method : method, parameters : paramters).responseJSON { (response) in
            guard let result = response.result.value else{
                print(response.result.error)
                return
            }
            finishCallback(result)
        }
        
        
    }
}
