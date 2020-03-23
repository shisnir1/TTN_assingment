//
//  NestedTableViewCell.swift
//  5. Compilation
//
//  Created by Mohit Pareek  on 06/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import UIKit

class NestedTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let nib = UINib(nibName: "NestedCollectionViewCell", bundle: nil)
        
        collectionView.register(nib, forCellWithReuseIdentifier: "nestedCollectionViewCell")
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .black
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension NestedTableViewCell : UICollectionViewDataSource, UICollectionViewDelegate {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return 10
       }
       
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "nestedCollectionViewCell", for: indexPath)
           cell.backgroundColor = .red
           return cell
           
       }
}

