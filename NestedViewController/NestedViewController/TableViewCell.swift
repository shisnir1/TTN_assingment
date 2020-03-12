//
//  TableViewCell.swift
//  NestedViewController
//
//  Created by Shishir SIngh on 12/03/20.
//  Copyright © 2020 Shishir SIngh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var CollectionViewCell: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        let nib = UINib(nibName: "NestedCollectionViewCell", bundle: nil)
              
              CollectionViewCell.register(nib, forCellWithReuseIdentifier: "NestedCollectionViewCell")
              
              CollectionViewCell.delegate = self
              CollectionViewCell.dataSource = self
              CollectionViewCell.backgroundColor = .black
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
    
extension TableViewCell : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NestedCollectionViewCell", for: indexPath)
                  cell.backgroundColor = .red
                  return cell
    }
    
         func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 10
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           
           return CGSize(width: 100, height: 150)
       }
}

