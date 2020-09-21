//
//  TableViewCellType2.swift
//  HwahaeProject
//
//  Created by sapere4ude on 2020/08/10.
//  Copyright © 2020 sapere4ude. All rights reserved.
//

import UIKit
import SwiftyJSON

class TableViewCellType2: UITableViewCell {
    
    //MARK: IBOutlet
    @IBOutlet weak var mainConatinerView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: property
    
    var infoData:JSON = JSON.null {
        didSet {
            self.collectionView.reloadData()
        }
    }
    
    //MARK: lifeCycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func InitUI() {
        self.mainConatinerView.backgroundColor = .black
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "CollectionViewCellType3", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCellType3")
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        self.collectionView.collectionViewLayout = layout
        self.collectionView.showsHorizontalScrollIndicator = false
    }
}

extension TableViewCellType2: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.infoData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let data:JSON = self.infoData[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCellType3.identifier, for: indexPath) as! CollectionViewCellType3
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize:CGSize = CGSize(width: 150, height: 150)
        
        return cellSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let edgeInsets:UIEdgeInsets = .init(top: 5,
                                            left: 10,
                                            bottom: 5,
                                            right: 10)
        return edgeInsets
    }
    
    
}
