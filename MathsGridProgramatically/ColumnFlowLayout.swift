//
//  ColumnFlowLayout.swift
//  MathsGridProgramatically
//
//  Created by John McNiffe on 08/07/2018.
//  Copyright © 2018 John McNiffe. All rights reserved.
//

import UIKit

class ColumnFlowLayout: UICollectionViewFlowLayout {
    override func prepare() {
        super.prepare()
        
        guard let cv = collectionView else { return }
        
     
        let cellDimension = (cv.bounds.size.width - 9)/10
        
        
        self.itemSize = CGSize(width: cellDimension, height: cellDimension)
        self.minimumInteritemSpacing = 1.0
        self.minimumLineSpacing = 1.0
        self.sectionInset = UIEdgeInsets(top: self.minimumInteritemSpacing, left: 0.0, bottom: 0.0, right: 0.0)
        self.sectionInsetReference = .fromSafeArea
        
    }
}
