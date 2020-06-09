//
//  SecondDelegationController.swift
//  DelegateAndProtocol
//
//  Created by Shishir SIngh on 09/06/20.
//  Copyright © 2020 Shishir SIngh. All rights reserved.
//

import UIKit
protocol ReceiverDelegate {
        func didReceive(dictionary: Dictionary<String, String>)
}

class SecondDelegationController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextfField: UITextField!
    @IBOutlet weak var parentsNameTextField: UITextField!
    var delegate: ReceiverDelegate?

    @IBAction func submitButtonTapped(_ sender: Any) {
        
        var dict = Dictionary<String, String>()
        dict["Name"] = nameTextField.text
        dict["Age"] = ageTextfField.text
        dict["ParentsName"] = parentsNameTextField.text
        delegate?.didReceive(dictionary: dict)
        self.navigationController?.popViewController(animated: true)
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
