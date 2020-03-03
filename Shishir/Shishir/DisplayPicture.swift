//
//  DisplayPicture.swift
//  Shishir
//
//  Created by Shishir SIngh on 03/03/20.
//  Copyright © 2020 Shishir SIngh. All rights reserved.
//

import UIKit

class DisplayPicture: UIViewController {
    var recivedImage  : UIImage?
    @IBOutlet weak var RecivedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RecivedImage.image = recivedImage

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
