//
//  MainTableCell.swift
//  5. Compilation
//
//  Created by Shishir Singh  on 05/03/20.
//  Copyright © 2020 Shishir Singh . All rights reserved.
//

import UIKit

class MainTableCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setLabelText(text : String) {
        label.text = text
    }
    
}
