//
//  ShoppingCollectionViewCellType3.swift
//  HwahaeProject
//
//  Created by sapere4ude on 2020/08/12.
//  Copyright © 2020 sapere4ude. All rights reserved.
//

import UIKit
import SwiftyJSON

class ShoppingCollectionViewCellType3: UICollectionViewCell {
    
    @IBOutlet weak var mainContainerView: UIView!
    @IBOutlet weak var imgContainerView: UIView!
    @IBOutlet weak var textContainerView: UIView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var introduceLabel: UILabel!
    
    static let identifier = "ShoppingCollectionViewCellType3"
    
    static func nib() -> UINib {
        return UINib(nibName: "ShoppingCollectionViewCellType3", bundle: nil)
    }
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //initUI()
    }
    
    public func configure(with model: Type3Model) {
        self.titleLabel.text = model.brand_name
        self.imgView.image = UIImage(named: model.image_url)
    }

}
