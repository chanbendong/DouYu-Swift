//
//  MainViewController.swift
//  DouYuDemo
//
//  Created by 吴孜健 on 2016/10/27.
//  Copyright © 2016年 吴孜健. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       addChildVC("Home")
       addChildVC("Live")
       addChildVC("Fellow")
       addChildVC("Profile")
    }
    
    fileprivate func addChildVC(_ storyName : String){
        let childVC = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()
        addChildViewController(childVC!)
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