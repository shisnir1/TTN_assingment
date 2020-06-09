//
//  SecondNotificationRecieverController.swift
//  DelegateAndProtocol
//
//  Created by Shishir SIngh on 09/06/20.
//  Copyright © 2020 Shishir SIngh. All rights reserved.
//


import UIKit

class SecondNotificationRecieverController: UIViewController {

    @IBOutlet weak var notificationRecieverLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        NotificationCenter.default.addObserver(self, selector: #selector(self.updateLabel(_:)), name: NSNotification.Name(rawValue: "notificationName"), object: nil)
    }

    @objc func updateLabel(_ notification: NSNotification) {
           print(notification.userInfo ?? "")
           if let dict = notification.userInfo as NSDictionary? {
               if let text = dict["Message"] as? String{
                notificationRecieverLabel.text = text
               }
           }
    }

    
}
