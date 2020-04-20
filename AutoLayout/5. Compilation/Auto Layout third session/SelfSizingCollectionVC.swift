//
//  SelfSizingCollectionVC.swift
//  5. Compilation
//
//  Created by Shishir Singh  on 15/03/20.
//  Copyright © 2020 Shishir Singh . All rights reserved.
//

import UIKit

class SelfSizingCollectionVC: UIViewController {

    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionLayout: UICollectionViewFlowLayout!{
        
        didSet{
            collectionLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        }
        
    }
    
    
    let collectionArray = ["hello this is the first cell", "Hello this is the second cell and i have a few more information in it", "Hello this is third cell and its information is blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    



}

extension SelfSizingCollectionVC : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SelfSizingCollectionViewCell", for: indexPath) as! SelfSizingCollectionViewCell
        cell.label.text = collectionArray[indexPath.row]
        
        return cell
        
    }
    
    
}
