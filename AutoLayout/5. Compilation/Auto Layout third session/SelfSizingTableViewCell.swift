//
//  SelfSizingTableViewCell.swift
//  5. Compilation
//
//  Created by Mohit Pareek  on 15/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import UIKit

class SelfSizingTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
