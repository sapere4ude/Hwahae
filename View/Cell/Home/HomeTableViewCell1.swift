//
//  HomeTableViewCell1.swift
//  Hwahae
//
//  Created by sapere4ude on 2020/09/17.
//  Copyright © 2020 sapere4ude. All rights reserved.
//

import UIKit

class HomeTableViewCell1: UITableViewCell {

    @IBOutlet weak var mainContentView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initUI() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "HomeCollectionViewCell1", bundle: nil), forCellWithReuseIdentifier: "HomeCollectionViewCell1")
        let layout = UICollectionViewFlowLayout()
        //layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
    }
}

extension HomeTableViewCell1: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell1", for: indexPath) as! HomeCollectionViewCell1

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = collectionView.bounds.width / 5
        let height: CGFloat = width
        print(#function)
        return CGSize(width: width, height: height)
    }
    
}
