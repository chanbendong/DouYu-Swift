//
//  BaseAnchorViewController.swift
//  DouYuDemo
//
//  Created by 吴孜健 on 2016/10/27.
//  Copyright © 2016年 吴孜健. All rights reserved.
//

import UIKit
let kItemMargin : CGFloat = 10
let kNormalItemW = (kScreenW - 3 * kItemMargin) / 2
let kNormalItemH = kNormalItemW * 3 / 4
let kPrettyItemH = kNormalItemW * 4 / 3
let kHeaderViewH : CGFloat = 50

let kNormalCellID = "kNormalCellID"
let kHeaderViewID = "kHeaderViewID"
let kPrettyCellID = "kPrettyCellID"

class BaseAnchorViewController: BaseViewController {

    var baseVM :BaseViewModel!
    
    lazy var collectionView : UICollectionView = {[unowned self] in
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: kNormalItemW, height: kNormalItemH)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = kItemMargin
        layout.headerReferenceSize = CGSize(width: kScreenW, height: kHeaderViewH)
        layout.sectionInset = UIEdgeInsetsMake(0, kItemMargin, 0, kItemMargin)
        
        let collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout:layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = UIColor.white
        collectionView.register(UINib(nibName: "CollectionViewNormalCell", bundle: nil), forCellWithReuseIdentifier: kNormalCellID)
        collectionView.register(UINib(nibName: "CollectionViewPrettyCell", bundle: nil), forCellWithReuseIdentifier: kPrettyCellID)
        collectionView.register(UINib(nibName: "CollectionHeaderView", bundle: nil), forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: kHeaderViewID)
        return collectionView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置UI界面
        self.setUI()()
        //请求数据
        self.loadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension BaseAnchorViewController{
    override func setUI() {
        self.baseContentView = collectionView
        self.view.addSubview(collectionView)
        super.setUI()
    }
}

// MARK: -请求数据
extension BaseAnchorViewController{
    func loadData() {
        
    }
}

// MARK: -collectionViewDelagate&&DataSource
extension BaseAnchorViewController : UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return self.baseVM.anchorGroups.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let group = self.baseVM.anchorGroups[section]
        return group.anchors.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kNormalCellID, for: indexPath) as! CollectionViewNormalCell
        let anchor = self.baseVM.anchorGroups[(indexPath as NSIndexPath).section].anchors[(indexPath as NSIndexPath).item]
        cell.anchor = anchor
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableCell(withReuseIdentifier: kHeaderViewID, for: indexPath) as! CollectionHeaderView
        let group = self.baseVM.anchorGroups[(indexPath as NSIndexPath).section]
        headerView.group = group
        return headerView
    }
}
extension BaseAnchorViewController : UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let  anchor = self.baseVM.anchorGroups[indexPath.section].anchors[indexPath.item]
        anchor.isVertical == 0 ? pushNod
    }
    func pushNormalRoomVC(_ anchor : AnchorModel) {
        //创建normalRoomVC
        let normarlRoomVC = RoomNormal
    }
}


