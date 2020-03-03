//
//  Segment.swift
//  Shishir
//
//  Created by Shishir SIngh on 03/03/20.
//  Copyright © 2020 Shishir SIngh. All rights reserved.
//

import UIKit

class Segment: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            outputLabel.text = "Employer Segmnet is Selected"
        default:
            outputLabel.text = "Employee Segment is Selected"
        }
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
