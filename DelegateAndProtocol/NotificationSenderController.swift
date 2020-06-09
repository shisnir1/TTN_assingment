//
//  NotificationSenderController.swift
//  DelegateAndProtocol
//
//  Created by Shishir SIngh on 09/06/20.
//  Copyright © 2020 Shishir SIngh. All rights reserved.
//

import UIKit

class NotificationSenderController: UIViewController {

    @IBOutlet weak var notificationSenderTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        
        
        guard let userEnteredText = notificationSenderTextField.text else {
            print("Enter Text First")
            return
            
        }
        
        let textDataDict:[String: String] = ["Message": userEnteredText]
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "notificationName"), object: nil, userInfo: textDataDict)
    }
    
   

}
