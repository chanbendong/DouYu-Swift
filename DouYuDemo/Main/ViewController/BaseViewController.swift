//
//  BaseViewController.swift
//  DouYuDemo
//
//  Created by 吴孜健 on 2016/10/27.
//  Copyright © 2016年 吴孜健. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    var baseContentView : UIView?
    
    fileprivate lazy var animImageView : UIImageView = {[unowned self] in
        let imageView = UIImageView(image: UIImage(named: "home_header_normal"))
        imageView.center = self.view.center
        imageView.animationImages = [UIImage(named: "home_header_normal")!,UIImage(named: "home_header_hot")!]
        imageView.animationDuration = 0.5
        imageView.animationRepeatCount = LONG_MAX
        imageView.autoresizingMask = [.flexibleTopMargin, .flexibleBottomMargin]
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setUI()
    }

       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension BaseViewController{
    func setUI() {
        self.baseContentView?.isHidden = true
        self.view.addSubview(animImageView)
        self.animImageView.startAnimating()
        view.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1)
    }
    func loadDataFinished() {
        self.animImageView.stopAnimating()
        self.animImageView.isHidden = true
        self.baseContentView?.isHidden = false
    }
}


