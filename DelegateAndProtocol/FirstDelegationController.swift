//
//  FirstDelegationController.swift
//  DelegateAndProtocol
//
//  Created by Shishir SIngh on 09/06/20.
//  Copyright © 2020 Shishir SIngh. All rights reserved.
//

import UIKit

class FirstDelegationController: UIViewController ,ReceiverDelegate{

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var parentsNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func didReceive(dictionary: Dictionary<String, String>) {
           nameLabel.text = dictionary["Name"]
           ageLabel.text = dictionary["Age"]
           parentsNameLabel.text = dictionary["ParentsName"]
           print(dictionary)
       }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
              let vc = storyboard.instantiateViewController(withIdentifier: "SecondDelegationController") as! SecondDelegationController
              vc.delegate = self
              self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
