//
//  AddDataVc.swift
//  5. Compilation
//
//  Created by Mohit Pareek  on 09/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import UIKit

protocol TableViewDataSendingProtocol {
    func sendDataToDataVC(newArrayElement : UserDetails)
}

class AddDataVc: UIViewController {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var newName: UITextField!
    @IBOutlet weak var newAddress: UITextField!
    @IBOutlet weak var newAge: UITextField!
    @IBOutlet weak var newDetail: UITextField!
    
    var delegate : TableViewDataSendingProtocol? = nil
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func submitTapped(_ sender: UIButton) {

        if self.delegate != nil {
            let newElement = UserDetails(image: self.userImage.image!, name: self.newName.text!, address: self.newAddress.text!, details: self.newDetail.text!, age: self.newAge.text!)
            self.delegate?.sendDataToDataVC(newArrayElement: newElement)
            
        }
        
        self.navigationController?.popViewController(animated: true)
        
    }
    

}
