//
//  DetailsCell.swift
//  5. Compilation
//
//  Created by Mohit Pareek  on 08/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import UIKit

class DetailsCell: UITableViewCell {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userAddress: UILabel!
    @IBOutlet weak var userDetails: UILabel!
    @IBOutlet weak var userAge: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func addDataToOutlets(image: UIImage, name: String, address: String, details: String, age: String) {
        self.userImage.image = image
        self.userName.text = name
        self.userAddress.text = address
        self.userDetails.text = details
        self.userAge.text = age
    }
    
}
