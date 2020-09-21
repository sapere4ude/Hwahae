//
//  ShoppingTableViewCellType4.swift
//  HwahaeProject
//
//  Created by sapere4ude on 2020/08/12.
//  Copyright © 2020 sapere4ude. All rights reserved.
//

import UIKit
import SwiftyJSON

class ShoppingTableViewCellType4: UITableViewCell {

    @IBOutlet weak var mainContainerView: UIView!
    @IBOutlet weak var topContainerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var moreBtnView: UIView!
    @IBOutlet weak var moreBtnImgView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    

    static let indetifier = "ShoppingCollectionViewCellType3"
    
    static func nib() -> UINib {
        return UINib(nibName: "ShoppingCollectionViewCellType3", bundle: nil)
    }
    
    func configure(with models: [Type3Model]) {
        self.models = models
        collectionView.reloadData()
    }
    
    var models = [Type3Model]()

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        collectionView.register(ShoppingCollectionViewCellType3.nib(), forCellWithReuseIdentifier:ShoppingCollectionViewCellType3.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension ShoppingTableViewCellType4: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShoppingCollectionViewCellType3", for: indexPath) as! ShoppingCollectionViewCellType3
        cell.configure(with: models[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: 250)
    }
    
}
