//
//  ViewController.swift
//  Shishir
//
//  Created by Shishir SIngh on 02/03/20.
//  Copyright © 2020 Shishir SIngh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    let picker = UIImagePickerController()
    let datepicker = UIDatePicker()
    @IBOutlet weak var Dob: UITextField!
    @IBOutlet weak var ImageView: UIImageView!
    private var datePicker : UIDatePicker?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        Dob.inputView = datePicker
        
    }

    @IBAction func UploadPhoto(_ sender: UIButton) {
        picker.allowsEditing = true
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
        
    }
    @IBAction func Dob(_ sender: UITextField) {
        
        
        }
    
    @IBAction func SignUpButton(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    let vc = storyBoard.instantiateViewController(withIdentifier: "DisplayPicture") as! DisplayPicture
    vc.recivedImage = ImageView.image
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            ImageView.image = pickedImage
            
        }
        dismiss(animated: true, completion: nil)
    }
}

