//
//  MathsGridCollectionViewController.swift
//  MathsGridProgramatically
//
//  Created by John McNiffe on 08/07/2018.
//  Copyright © 2018 John McNiffe. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MathsGridCollectionViewController: UICollectionViewController {
    
    var keyNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let flowLayout = ColumnFlowLayout()
        
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: flowLayout)
        collectionView.backgroundColor = UIColor(red: 192/255, green: 240/255, blue: 209/255, alpha: 1.0)
   
        view.addSubview(collectionView)
        

        self.collectionView!.register(GridCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        

    }

   
    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
 
        return 200
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! GridCollectionViewCell
        cell.backgroundColor = UIColor.white
        
        let cellNumber = indexPath.row + 1
  
        
        switch cellNumber % keyNumber {
        case 0: cell.textLabel.alpha = 0.9
        default: cell.textLabel.alpha = 0.2
        }
        
        cell.textLabel.text = "\(cellNumber)"
        
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        keyNumber = indexPath.row + 1
        collectionView.reloadData()
        
        print("Cell selected: \(indexPath.row)")
    }
    
}
