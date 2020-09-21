//
//  CollectionViewCellType3.swift
//  Hwahae
//
//  Created by sapere4ude on 2020/09/21.
//  Copyright © 2020 sapere4ude. All rights reserved.
//

import UIKit
import SwiftyJSON

class CollectionViewCellType3: UICollectionViewCell {
    
    static let identifier = "CollectionViewCellType3"
    @IBOutlet weak var mainContainerView: UIView!
    @IBOutlet weak var imgContainerView: UIView!
    @IBOutlet weak var textContainerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    //MARK: property
    
    var infoData:JSON = JSON.null {
        didSet {
            self.titleLabel.text = "\(infoData["section"].stringValue)"
            print("\(infoData["section"].stringValue)")
            self.imageView.sd_setImage(with:  URL(string: infoData["image_url"].stringValue), placeholderImage: nil, options: .lowPriority, completed: nil)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        initUI()
    }
    
    //MARK: function
    
    func initUI() {
        
        self.mainContainerView.backgroundColor = .black
        self.imgContainerView.backgroundColor = .clear
        self.imgContainerView.layer.borderWidth = 1
        self.imgContainerView.layer.borderColor = UIColor.lightGray.cgColor
        self.imgContainerView.layer.cornerRadius = 3
        self.imgContainerView.contentMode = .scaleAspectFill
        self.textContainerView.backgroundColor = .clear
        
        
        self.titleLabel.font = UIFont(name: "HelveticaNeue", size: 10)
        self.titleLabel.textColor = .darkGray
    }
    
    public func configure(label: String) {
        titleLabel.text = nil
    }
}
