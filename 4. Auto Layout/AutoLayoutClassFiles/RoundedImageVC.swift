//
//  RoundedImageVC.swift
//  4. Auto Layout
//
//  Created by Mohit Pareek  on 05/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import UIKit

class RoundedImageVC: UIViewController {

    @IBOutlet weak var roundedImage: UIImageView!
    @IBOutlet weak var squaredView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.roundImage()
    }
    

    func roundImage() {
        roundedImage.layer.borderWidth = 1
        
        roundedImage.layer.cornerRadius = roundedImage.frame.height/2
        roundedImage.clipsToBounds = true
    }
 
}
