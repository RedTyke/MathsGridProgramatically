//
//  GridCollectionViewCell.swift
//  MathsGridProgramatically
//
//  Created by John McNiffe on 08/07/2018.
//  Copyright © 2018 John McNiffe. All rights reserved.
//

import UIKit

class GridCollectionViewCell: UICollectionViewCell {
    
    var textLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        textLabel = UILabel(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.width))
        textLabel.font = UIFont.systemFont(ofSize: 12)
        textLabel.textColor = UIColor.blue
        textLabel.textAlignment = .center
        contentView.addSubview(textLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
 
    
    
    
}
