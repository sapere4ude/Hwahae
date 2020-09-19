//
//  HomeCollectionViewCell.swift
//  Hwahae
//
//  Created by sapere4ude on 2020/09/17.
//  Copyright © 2020 sapere4ude. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    static let identifier = "HomeCollectionViewCell"
    
    let topInsertLabel = ["랭킹","화해쇼핑","카테고리검색","성분으로검색"]
    let topInsertImage = ["ㅇ"]
    
    private let topImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let topLabel1: UILabel = {
        let label = UILabel()
        label.text = "랭킹"
        label.textAlignment = .center
        return label
    }()
    
    private let topLabel2: UILabel = {
        let label = UILabel()
        label.text = "화해쇼핑"
        label.textAlignment = .center
        return label
    }()
    
    private let topLabel3: UILabel = {
        let label = UILabel()
        label.text = "카테고리검색"
        label.textAlignment = .center
        return label
    }()
    
    private let topLabel4: UILabel = {
        let label = UILabel()
        label.text = "성분으로검색"
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(topImageView)
        contentView.addSubview(topLabel1)
        contentView.addSubview(topLabel2)
        contentView.addSubview(topLabel3)
        contentView.addSubview(topLabel4)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
